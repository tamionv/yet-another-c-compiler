module Intermediate where
{-
 - Intermediate representation:
 -
 - Stack based language.
 -
 - Instructions:
 - Alloc name width
 -
 - Const width value
 - Local
 - Global name
 - Load width
 - Store width
 - 
 - Binop width op
 - Monop width op
 -
 - Label L
 - Jump label
 - CondJump Label
 -
 -}

data BinaryOperators
    = Plus
    | Minus
    | Times
    | Divides
    | Modulo
    | LShift
    | RShift
    | Less
    | Greater
    | LessEquals
    | GreaterEquals
    | Equals
    | NotEquals
    | BitXor
    | BitAnd
    | BitOr
    | And
    | Or 
    deriving Show

data UnaryOperators
    = Not
    | Negate
    | BitFlip
    | Print
    | Pop
    deriving Show

data IntermediateCode
    = Seq [IntermediateCode]
    | Const Int Int
    | Alloc String Int
    | Local
    | Global String
    | Binop Int BinaryOperators
    | Monop Int UnaryOperators
    | Label Int
    | Jump Int 
    | CondJump Int
    | Load Int
    | Store Int
    deriving Show

flatten (Seq xs) = concatMap flatten xs
flatten ins      = [ins]
