module SyntaxToIntermediate (gen_program) where
import Syntax as S
import Intermediate as I
import qualified Data.Map.Strict as Map
import qualified Data.Set as Set

builtin_type_sizes = Map.fromList
    [(Void, 0)
    ,(Char, 1)
    ,(Short, 2)
    ,(Int, 4)
    ,(Long, 4)
    ,(LongLong, 8)
    ,(Float, 4)
    ,(Double, 8)
    ,(UnsignedInt, 4)
    ,(UnsignedLong, 4)
    ,(UnsignedLongLong, 8)
    ]

builtin_type_alignments = builtin_type_sizes

data GeneratorState = GeneratorState
    { type_sizes        :: Map.Map Type Int
    , type_alignments   :: Map.Map Type Int
    , global_variables  :: Set.Set String
    , current_label     :: Int
    } deriving (Eq, Ord, Show)

get_label_from_state gs =
    (current_label gs + 1
    , GeneratorState
        {type_sizes = type_sizes gs
        , type_alignments = type_alignments gs
        , global_variables = global_variables gs
        , current_label = current_label gs + 1
        }
    )

generate_expression e = case e of
    Variable name    -> Seq [Global name, Load 4]
    ConstantInt x    -> Const 4 x
    --ConstantDouble x -> 
    --ConstantString str ->
    --Ternop ...
    -- these sizes are bad TODO
    ConstantChar x   -> Const 1 $ fromEnum x
    S.Binop "," x y -> Seq
        [generate_expression x
        , I.Monop 4 Pop
        , generate_expression y
        , I.Monop 4 Pop
        ]
    S.Binop "/" x y -> Seq
        [generate_expression x
        , generate_expression y
        , I.Binop 4 Divides
        ]
    S.Binop "%" x y -> Seq
        [generate_expression x
        , generate_expression y
        , I.Binop 4 Modulo
        ]
    S.Binop "+" x y -> Seq
        [generate_expression x
        , generate_expression y
        , I.Binop 4 Plus
        ]
    S.Binop "-" x y -> Seq
        [generate_expression x
        , generate_expression y
        , I.Binop 4 Minus
        ]
    S.Binop "*" x y -> Seq
        [generate_expression x
        , generate_expression y
        , I.Binop 4 Times
        ]
    S.Binop "<<" x y -> Seq
        [generate_expression x
        , generate_expression y
        , I.Binop 4 LShift
        ]
    S.Binop ">>" x y -> Seq
        [generate_expression x
        , generate_expression y
        , I.Binop 4 RShift
        ]
    S.Binop "<" x y -> Seq
        [generate_expression x
        , generate_expression y
        , I.Binop 4 Less
        ]
    S.Binop ">" x y -> Seq
        [generate_expression x
        , generate_expression y
        , I.Binop 4 Greater
        ]
    S.Binop "<=" x y -> Seq
        [generate_expression x
        , generate_expression y
        , I.Binop 4 LessEquals
        ]
    S.Binop ">=" x y -> Seq
        [generate_expression x
        , generate_expression y
        , I.Binop 4 GreaterEquals
        ]
    S.Binop "==" x y -> Seq
        [generate_expression x
        , generate_expression y
        , I.Binop 4 Equals
        ]
    S.Binop "!=" x y -> Seq
        [generate_expression x
        , generate_expression y
        , I.Binop 4 NotEquals
        ]
    S.Binop "&" x y -> Seq
        [generate_expression x
        , generate_expression y
        , I.Binop 4 BitAnd
        ]
    S.Binop "|" x y -> Seq
        [generate_expression x
        , generate_expression y
        , I.Binop 4 BitOr
        ]
    S.Binop "&&" x y -> Seq
        [generate_expression x
        , generate_expression y
        , I.Binop 4 And
        ]
    S.Binop "||" x y -> Seq
        [generate_expression x
        , generate_expression y
        , I.Binop 4 Or
        ]
    -- TODOOOOOO proper assignement sizes
    S.Binop "=" (Variable x) y -> Seq 
        [generate_expression y
        , Global x
        , Store 4
        , Global x
        , Load 4
        ]
    S.Binop "+=" (Variable x) y -> Seq 
        [generate_expression (S.Binop "+" (Variable x) y)
        , Global x
        , Store 4
        , Global x
        , Load 4
        ]
    S.Binop "-=" (Variable x) y -> Seq 
        [generate_expression (S.Binop "-" (Variable x) y)
        , Global x
        , Store 4
        , Global x
        , Load 4
        ]
    S.Binop "*=" (Variable x) y -> Seq 
        [generate_expression (S.Binop "*" (Variable x) y)
        , Global x
        , Store 4
        , Global x
        , Load 4
        ]
    S.Binop "/=" (Variable x) y -> Seq 
        [generate_expression (S.Binop "/" (Variable x) y)
        , Global x
        , Store 4
        , Global x
        , Load 4
        ]
    S.Binop "%=" (Variable x) y -> Seq 
        [generate_expression (S.Binop "%" (Variable x) y)
        , Global x
        , Store 4
        , Global x
        , Load 4
        ]
    S.Binop "&=" (Variable x) y -> Seq 
        [generate_expression (S.Binop "&" (Variable x) y)
        , Global x
        , Store 4
        , Global x
        , Load 4
        ]
    S.Binop "^=" (Variable x) y -> Seq 
        [generate_expression (S.Binop "^" (Variable x) y)
        , Global x
        , Store 4
        , Global x
        , Load 4
        ]
    S.Binop "|=" (Variable x) y -> Seq 
        [generate_expression (S.Binop "|" (Variable x) y)
        , Global x
        , Store 4
        , Global x
        , Load 4
        ]
    S.Binop ">>=" (Variable x) y -> Seq 
        [generate_expression (S.Binop ">>" (Variable x) y)
        , Global x
        , Store 4
        , Global x
        , Load 4
        ]
    S.Binop "<<=" (Variable x) y -> Seq 
        [generate_expression (S.Binop "<<" (Variable x) y)
        , Global x
        , Store 4
        , Global x
        , Load 4
        ]
    S.Monop "!" x -> Seq 
        [generate_expression x
        , I.Monop 4 Not
        ]
    S.Monop "++." (Variable x) -> Seq
        [generate_expression (Variable x)
        , generate_expression (Variable x)
        , Const 4 1
        , I.Binop 4 Plus
        , Global x
        , Load 4
        ]
    S.Monop "--." (Variable x) -> Seq
        [generate_expression (Variable x)
        , generate_expression (Variable x)
        , Const 4 1
        , I.Binop 4 Minus
        , Global x
        , Load 4
        ]
    S.Monop ".++" (Variable x) -> Seq
        [generate_expression (Variable x)
        , Const 4 1
        , I.Binop 4 Plus
        , Global x
        , Load 4
        , Global x
        , Store 4
        ]
    S.Monop ".--" (Variable x) -> Seq
        [generate_expression (Variable x)
        , Const 4 1
        , I.Binop 4 Plus
        , Global x
        , Load 4
        , Global x
        , Store 4
        ]
    S.Monop "~" x -> Seq
        [generate_expression x
        , I.Monop 4 BitFlip
        ]
    S.Monop "-" x -> Seq
        [generate_expression x
        , I.Monop 4 Negate
        ]
    -- S.Monop "&"
    -- S.Monop "*"

generate_declaration (VarDecl _ xs) = Seq 
    [ Seq (map (\(x, _) -> Alloc x 4) xs)
    , Seq (do
        (x, y) <- xs
        (case y of
            Nothing -> []
            Just yy -> 
                [generate_expression (S.Binop "=" (Variable x) yy)]
            )
        )
    ]

generate_statement s = case s of
    ExprStmt e -> generate_expression e
    S.Print e -> Seq [generate_expression e, I.Monop 4 I.Print]

gen_program (Prg decls stmts) = map generate_declaration decls ++ map generate_statement stmts
