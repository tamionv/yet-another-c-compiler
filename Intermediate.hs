module Intermediate where
{-
 - Intermediate representation:
 -
 - Stack based language.
 -
 - Instructions:
 -
 - Call input_bytes output_bytes
 - Procedure String
 - EndProcedure
 - 
 - LocalAlloc width
 - LocalDealloc width
 - GlobalAlloc name width
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
 -
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
    | Read
    | Pop
    deriving Show

data IntermediateCode
    = Seq [IntermediateCode]
    | Const Int Int
    | GlobalAlloc String Int
    | LocalAlloc Int
    | LocalDealloc Int
    | Local
    | Global String
    | Binop Int BinaryOperators
    | Monop Int UnaryOperators
    | Label Int
    | Jump Int 
    | CondJump Int
    | Load Int
    | Store Int
    | Procedure String 
    | EndProcedure
    | Call Int Int
    | Halt
    deriving Show

flatten (Seq xs) = concatMap flatten xs
flatten ins      = [ins]
