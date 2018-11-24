{
module Lexer (alexScanTokens) where
import Token
}

%wrapper "basic"

$digit = 0-9
$alpha = [a-zA-Z]
$eol = [\n]
@comment = (\/ * ( [^\*] | [\r\n] | (\* + ( [^ \* \/] | [\r\n] )))* \* + \/) | (\/ \/ \\. *)
@punctuation = "{" | "}" | "[" | "]" | "(" | ")" | "." | "->" | "++" | "--" | "&" | "*" | "+" | "-" | "~" | "!" | "sizeof" | "/" | "%" | "<<" | ">>" | "<" | ">" | "<=" | ">=" | "==" | "!=" | "^" | "|" | "&&" | "||" | "?" | ":" | "=" | "*=" | "/=" | "%=" | "+=" | "-=" | "<<=" | ">>=" | "&=" | "^=" | "|=" | "," | "#" | "##" | ";" | ":" | "..."
@keyword = "print" | "auto" | "break" | "case" | "char" | "const" | "continue" | "default" | "do" | "double" | "else" | "enum" | "extern" | "float" | "for" | "goto" | "if" | "int" | "long" | "register" | "return" | "short" | "signed" | "sizeof" | "static" | "struct" | "switch" | "typedef" | "union" | "unsigned" | "void" | "volatile" | "while"
@identifier = [_a-zA-Z][\_a-zA-Z0-9]*
@int = [1-9][0-9]*
@string = \" ([^ \"] | \\\")* \"
@char = \'[^']\'
@float = [\- \+]? [0-9]+ (\.[0-9]+ ([eE] [\- \+]? [0-9]+)?)?

tokens :-
    $eol                ;
    $white+             ;
    @comment            ;
    @punctuation        { \s -> Punctuation s }
    @keyword            { \s -> Keyword s }
    @identifier         { \s -> Identifier s }
    @int                { \s -> LiteralInteger (read s) }
    @string             { \s -> LiteralString (read s) }
    @char               { \s -> LiteralChar (read s) }
    @float              { \s -> LiteralFloat (read s) }
