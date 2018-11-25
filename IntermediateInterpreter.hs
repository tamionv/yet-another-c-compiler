module IntermediateInterpreter (interpret) where

import Intermediate
import Control.Monad.State
import Data.Map.Strict as M
import Data.Bits
import Data.Int

data InterpreterState = InterpreterState
    { stk :: [Int8]
    , ins :: [IntermediateCode]
    , lab :: M.Map Int [IntermediateCode]
    , ra :: [[IntermediateCode]]
    }

pop_byte :: StateT InterpreterState IO Int8
pop_byte = do
    (x:xs) <- gets stk
    curr <- get
    put $ curr { stk = xs }
    return x

push_byte :: Int8 -> StateT InterpreterState IO ()
push_byte b = do
    xs <- gets stk
    curr <- get
    put $ curr { stk = b:xs }
    return ()

pop_stack :: Int -> StateT InterpreterState IO Int
pop_stack i =
    if i == 1
    then fromInteger <$> toInteger <$> pop_byte
    else do
        b1 <- fromInteger <$> toInteger <$> pop_byte
        bs <- pop_stack (i-1)
        return $ b1 .|. (bs `shift` 8)

push_stack :: Int -> Int -> StateT InterpreterState IO ()
push_stack len val =
    if len == 1
    then push_byte (fromInteger $ toInteger $ val)
    else do
        push_byte (fromInteger $ toInteger $ val .&. 255)
        push_stack (len - 1) $ val `shift` (-8)

applyBinaryOperator :: Int -> BinaryOperators -> StateT InterpreterState IO ()
applyBinaryOperator width op = do
    y <- pop_stack width
    x <- pop_stack width
    let ret = case op of
            Plus -> x + y
            Minus -> x - y
            Times -> x * y
            Divides -> x `div` y
            Modulo -> x `mod` y
            LShift -> shiftL x y
            RShift -> shiftR x y
            Less -> fromEnum $ x < y
            Greater -> fromEnum $ x > y
            LessEquals -> fromEnum $ x <= y
            GreaterEquals -> fromEnum $ x >= y
            Equals -> fromEnum $ x == y
            NotEquals -> fromEnum $ x /= y
            BitXor -> x `xor` y
            BitAnd -> x .&. y
            BitOr -> x .|. y
            And -> fromEnum $ (x /= 0) && (y /= 0)
            Or -> fromEnum $ (x /= 0) || (y /= 0)
    push_stack width ret

{-
interpretUnaryOperator = flip lookup
    [(Not, Just . (!))
    ,(Negate, Just . \x -> -x)
    ,(BitFlip, Just . complement)
    ,(Print,
    ,(Read,
    ,(Pop, Nothing)
    ]

interpret ic = flatten ic
-}
interpret = undefined
