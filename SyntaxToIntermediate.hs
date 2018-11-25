module SyntaxToIntermediate (gen_program) where
import Syntax as S
import Intermediate as I
import Control.Monad.State.Lazy
import qualified Data.Map.Strict as Map
import qualified Data.Set as Set
import qualified Data.List as List

simple_monop = flip elem ["!", "~", "-"]
prefix_crement_monop = (=='.') . head
suffix_crement_monop = (=='.') . last
translate_crement_monop_name_to_binop x = case x of
    (_:'+':_:[]) -> Plus
    (_:'-':_:[]) -> Minus
translate_simple_monop_name x = case x of
    "!" -> Not
    "~" -> BitFlip
    "-" -> Negate

assign_binop = flip elem ["=", "+=", "-=", "*=", "/=", "%=", "&=", "^=", "|=", ">>=", "<<="]
simple_binop = flip elem ["/", "%", "+", "-", "*", "<<", ">>", "<", ">", "<=", ">=", "==", "!=", "&", "|", "&&", "||"]
translate_simple_binop_name x = case x of
    "/" -> Divides
    "%" -> Modulo
    "+" -> Plus
    "-" -> Minus
    "*" -> Times
    "<<" -> LShift
    ">>" -> RShift
    "<" -> Less
    ">" -> Greater
    "<=" -> LessEquals
    ">=" -> GreaterEquals
    "==" -> Equals
    "!=" -> NotEquals
    "&" -> BitAnd
    "|" -> BitOr
    "&&" -> And
    "||" -> Or

turn_assignment_into_simple = init

builtin_type_sizes = Map.fromList
    [ (Void, 0)
    , (Char, 1)
    , (Short, 2)
    , (Int, 4)
    , (Long, 4)
    , (LongLong, 8)
    , (Float, 4)
    , (Double, 8)
    , (UnsignedInt, 4)
    , (UnsignedLong, 4)
    , (UnsignedLongLong, 8)
    ]

builtin_type_alignments = builtin_type_sizes

data GeneratorState = GeneratorState
    { type_sizes        :: Map.Map Type Int
    , type_alignments   :: Map.Map Type Int
    , global_variables  :: Set.Set String
    , current_label     :: Int
    } deriving (Eq, Ord, Show)

init_state = GeneratorState
    { type_sizes = builtin_type_sizes
    , type_alignments = builtin_type_alignments
    , global_variables = Set.empty
    , current_label = 0
    }

get_label_from_state :: State GeneratorState Int
get_label_from_state = do
    gs <- get
    put $ GeneratorState
        {type_sizes = type_sizes gs
        , type_alignments = type_alignments gs
        , global_variables = global_variables gs
        , current_label = current_label gs + 1
        }
    return $ current_label gs

generate_expression :: S.Expr -> State GeneratorState I.IntermediateCode
generate_expression e = case e of
    Variable name    -> return $ Seq [Global name, Load 4]
    ConstantInt x    -> return $ Const 4 x
    --ConstantDouble x -> 
    --ConstantString str ->
    --Ternop ...
    -- these sizes are bad TODO
    ConstantChar x   -> return $ Const 1 $ fromEnum x
    S.Binop which_op x y ->
        if which_op == "="
        then do
            let Variable name_x = x
            g_expr_y <- generate_expression y
            return $ Seq
                [ g_expr_y
                , Global name_x
                , Store 4
                , Global name_x
                , Load 4
                ]
        else if which_op == ","
        then do
            g_expr_x <- generate_expression x
            g_expr_y <- generate_expression y
            return $ Seq
                [ g_expr_x
                , I.Monop 4 Pop
                , g_expr_y
                , I.Monop 4 Pop
                ]
 
        else if simple_binop which_op
        then do
            g_expr_x <- generate_expression x
            g_expr_y <- generate_expression y
            return $ Seq
                [ g_expr_x
                , g_expr_y
                , I.Binop 4 $ translate_simple_binop_name which_op
                ]
        else if assign_binop which_op
        -- TODO: proper assignement sizes
        then let Variable name_x = x in do
            ret <- generate_expression (S.Binop (turn_assignment_into_simple which_op) x y)
            return $ Seq
                [ ret
                , Global name_x
                , Store 4
                , Global name_x
                , Load 4
                ]
        else error "Error 1"
    -- TODO monop &, *
    S.Monop which_op x ->
        if simple_monop which_op
        then do
            g_expr_x <- generate_expression x
            return $ Seq
                [g_expr_x
                , I.Monop 4 $ translate_simple_monop_name which_op
                ]
        else if prefix_crement_monop which_op
        then do
            let Variable name_x = x
            g_expr_x <- generate_expression x
            return $ Seq
                [g_expr_x
                , g_expr_x
                , Const 4 1
                , I.Binop 4 $ translate_crement_monop_name_to_binop which_op
                , Global name_x
                , Load 4
                ]
        else if suffix_crement_monop which_op
        then do
            let Variable name_x = x
            g_expr_x <- generate_expression x
            return $ Seq
                [g_expr_x
                , Const 4 1
                , I.Binop 4 $ translate_crement_monop_name_to_binop which_op
                , Global name_x
                , Load 4
                , Global name_x
                , Store 4
                ]
        else error "Error 2"

-- TODO declaration types
generate_declaration :: Declaration -> State GeneratorState I.IntermediateCode
generate_declaration (VarDecl _ xs) = do
    let gen_init (x, y) = case y of
            Nothing -> return $ Seq []
            Just yy -> do
                gen_eq <- generate_expression (S.Binop "=" (Variable x) (yy))
                return $ Seq $ [gen_eq, I.Monop 4 I.Pop]
    inits <- mapM gen_init xs
    return $ Seq
        [ Seq $ map (\(x, _) -> Alloc x 4) xs
        , Seq inits
        ]

generate_statement :: Stmt -> State GeneratorState I.IntermediateCode
generate_statement s = case s of
    ExprStmt e -> generate_expression e
    S.Print e -> do
        g_expr_e <- generate_expression e
        return $ Seq [g_expr_e, I.Monop 4 I.Print]

gen_program :: Program -> I.IntermediateCode
gen_program (Prg decls stmts) = fst $ flip runState init_state $ do
    let isAlloc ins = case ins of
            Alloc _ _ -> True
            _         -> False
    (allocs, inits) <- List.partition isAlloc <$> I.flatten <$> Seq <$> mapM generate_declaration decls
    text <- mapM generate_statement stmts
    return $ Seq $ allocs ++ inits ++ text
