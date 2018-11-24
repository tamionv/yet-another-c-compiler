module Token where

data Token
    = Punctuation String
    | Keyword String
    | Identifier String
    | LiteralInteger Int
    | LiteralFloat Double
    | LiteralString String
    | LiteralChar Char
    deriving (Eq, Show)

