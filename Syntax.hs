module Syntax where

data Program = Prg [Declaration] [Stmt]
    deriving (Eq, Ord, Show)

data Expr
    = Variable String
    | ConstantInt Int
    | ConstantDouble Double
    | ConstantString String
    | ConstantChar Char
    | Monop String Expr
    | Binop String Expr Expr
    | Ternop String Expr Expr Expr
    deriving (Eq, Ord, Show)

data Stmt
    = ExprStmt Expr
    | Print Expr
    deriving (Eq, Ord, Show)

data Type
    = Void 
    | Char
    | Short
    | Int
    | Long
    | LongLong
    | Float
    | Double
    | UnsignedInt
    | UnsignedLong
    | UnsignedShort
    | UnsignedChar
    | UnsignedLongLong
    deriving (Eq, Ord, Show)

data Declaration = VarDecl Type [(String, Maybe Expr)]
    deriving (Eq, Ord, Show)
