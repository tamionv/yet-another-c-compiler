{
module Parser (parse) where
import Token
import Syntax
}

%name parse program
%tokentype { Token }
%error { parseError }

%token
    NUM         { LiteralInteger $$ }
    STR         { LiteralString $$ }
    FLT         { LiteralFloat $$ }
    CHR         { LiteralChar $$ }
    ID          { Identifier $$ }
    PRINT       { Keyword "print" }
    READ        { Keyword "read" }
    AUTO        { Keyword "auto" }
    BREAK       { Keyword "break" }
    CASE        { Keyword "case" }
    CHAR        { Keyword "char" }
    CONST       { Keyword "const" }
    CONTINUE    { Keyword "continue" }
    DEFAULT     { Keyword "default" }
    DO          { Keyword "do" }
    DOUBLE      { Keyword "double" }
    ELSE        { Keyword "else" }
    ENUM        { Keyword "enum" }
    EXTERN      { Keyword "extern" }
    FLOAT       { Keyword "float" }
    FOR         { Keyword "for" }
    GOTO        { Keyword "goto" }
    IF          { Keyword "if" }
    INT         { Keyword "int" }
    LONG        { Keyword "long" }
    REGISTER    { Keyword "register" }
    RETURN      { Keyword "return" }
    SHORT       { Keyword "short" }
    SIGNED      { Keyword "signed" }
    SIZEOF      { Keyword "sizeof" }
    STATIC      { Keyword "static" }
    STRUCT      { Keyword "struct" }
    SWITCH      { Keyword "switch" }
    TYPEDEF     { Keyword "typedef" }
    UNION       { Keyword "union" }
    UNSIGNED    { Keyword "unsigned" }
    VOID        { Keyword "void" }
    VOLATILE    { Keyword "volatile" }
    WHILE       { Keyword "while" }
    "{"         { Punctuation "{" }
    "}"         { Punctuation "}" }
    "("         { Punctuation "(" }
    ")"         { Punctuation ")" }
    "["         { Punctuation "[" }
    "]"         { Punctuation "]" }
    "->"        { Punctuation "->" }
    "."         { Punctuation "." }
    "!"         { Punctuation "!" }
    "~"         { Punctuation "~" }
    "++"        { Punctuation "++" }
    "--"        { Punctuation "--" }
    "/"         { Punctuation "/" }
    "%"         { Punctuation "%" }
    "+"         { Punctuation "+" }
    "*"         { Punctuation "*" }
    "-"         { Punctuation "-" }
    "<<"        { Punctuation "<<" }
    ">>"        { Punctuation ">>" }
    "<"         { Punctuation "<" }
    "<="        { Punctuation "<=" }
    ">"         { Punctuation ">" }
    ">="        { Punctuation ">=" }
    "=="        { Punctuation "==" }
    "!="        { Punctuation "!=" }
    "&"         { Punctuation "&" }
    "^"         { Punctuation "^" }
    "|"         { Punctuation "|" }
    "&&"        { Punctuation "&&" }
    "||"        { Punctuation "||" }
    "?"         { Punctuation "?" }
    ":"         { Punctuation ":" }
    "="         { Punctuation "=" }
    "+="        { Punctuation "+=" }
    "-="        { Punctuation "-=" }
    "*="        { Punctuation "*=" }
    "/="        { Punctuation "/=" }
    "%="        { Punctuation "%=" }
    ">>="       { Punctuation ">>=" }
    "<<="       { Punctuation "<<=" }
    "&="        { Punctuation "&=" }
    "^="        { Punctuation "^=" }
    "|="        { Punctuation "|=" }
    ","         { Punctuation "," }
    ";"         { Punctuation ";" }

%nonassoc IFTHEN
%nonassoc ELSE
%right PAREN
%left ";"
%left ","
%right "=" "+=" "-=" "*=" "/=" "%=" "<<=" ">>=" "&=" "^=" "|="
%right "?" ":"
%left "||"
%left "&&"
%left "|"
%left "^"
%left "&"
%left "==" "!="
%left "<" "<=" ">" ">="
%left "<<" ">>"
%left "+" "-"
%left "*" "/" "%"
%right "++" "--" "+" "!" "~" DEREF REF PRECINC NEG
%left "->" "++" "--" "(" ")" "[" "]" "." "->"

%%

program: declarations stmts     { Prg (reverse $1) $2 }

stmts
    :                           { Nop }
    | stmts stmt                { AndThenStmt $1 $2 }

stmt
    : ";"                                                                 { Nop }
    | expr ";"                                                            { ExprStmt $1 }
    | PRINT "(" expr ")" ";"                                              { Print $3 }
    | READ "(" expr ")" ";"                                               { Read $3 }
    | IF "(" expr ")" stmt                           %prec IFTHEN         { IfStmt $3 $5 Nop }
    | IF "(" expr ")" "{" stmts "}"                  %prec IFTHEN         { IfStmt $3 $6 Nop }
    | IF "(" expr ")" stmt ELSE stmt                                      { IfStmt $3 $5 $7 }
    | IF "(" expr ")" stmt ELSE "{" stmt "}"                              { IfStmt $3 $5 $8 }
    | IF "(" expr ")" "{" stmts "}" ELSE stmt                             { IfStmt $3 $6 $9 }
    | IF "(" expr ")" "{" stmts "}" ELSE "{" stmts "}"                    { IfStmt $3 $6 $10 }

expr
    : ID                        { Variable $1 }
    | NUM                       { ConstantInt $1 }
    | FLT                       { ConstantDouble $1 }
    | STR                       { ConstantString $1 }
    | CHR                       { ConstantChar $1 }
    | "(" expr ")" %prec PAREN  { $2 }
    | expr "[" expr "]"         { Binop "[" $1 $3 }
    | "!" expr                  { Monop "!" $2 }
    | "++" expr %prec PRECINC   { Monop "++." $2 }
    | "--" expr %prec PRECINC   { Monop "--." $2 }
    | expr "++"                 { Monop ".++" $1 }
    | expr "--"                 { Monop ".--" $1 }
    | "~" expr                  { Monop "~" $2 }
    | "-" expr %prec NEG        { Monop "-" $2 }
    | "&" expr %prec REF        { Monop "&" $2 }
    | "*" expr %prec DEREF      { Monop "*" $2 }
    | expr "?" expr ":" expr    { Ternop "?:" $1 $3 $5 }
    | expr "->" expr            { Binop "->" $1 $3 }
    | expr "." expr             { Binop "." $1 $3 }
    | expr "/" expr             { Binop "/" $1 $3 }
    | expr "%" expr             { Binop "%" $1 $3 }
    | expr "+" expr             { Binop "+" $1 $3 }
    | expr "-" expr             { Binop "-" $1 $3 }
    | expr "*" expr             { Binop "*" $1 $3 }
    | expr "<<" expr            { Binop "<<" $1 $3 }
    | expr ">>" expr            { Binop ">>" $1 $3 }
    | expr "<" expr             { Binop "<" $1 $3 }
    | expr "<=" expr            { Binop "<=" $1 $3 }
    | expr ">" expr             { Binop ">" $1 $3 }
    | expr ">=" expr            { Binop ">=" $1 $3 }
    | expr "==" expr            { Binop "==" $1 $3 }
    | expr "!=" expr            { Binop "!=" $1 $3 }
    | expr "&" expr             { Binop "&" $1 $3 }
    | expr "^" expr             { Binop "^" $1 $3 }
    | expr "|" expr             { Binop "|" $1 $3 }
    | expr "&&" expr            { Binop "&&" $1 $3 }
    | expr "||" expr            { Binop "||" $1 $3 }
    | expr "=" expr             { Binop "=" $1 $3 }
    | expr "+=" expr            { Binop "+=" $1 $3 }
    | expr "-=" expr            { Binop "-=" $1 $3 }
    | expr "*=" expr            { Binop "*=" $1 $3 }
    | expr "/=" expr            { Binop "/=" $1 $3 }
    | expr "%=" expr            { Binop "%=" $1 $3 }
    | expr ">>=" expr           { Binop ">>=" $1 $3 }
    | expr "<<=" expr           { Binop "<<=" $1 $3 }
    | expr "&=" expr            { Binop "&=" $1 $3 }
    | expr "^=" expr            { Binop "^=" $1 $3 }
    | expr "|=" expr            { Binop "|=" $1 $3 }
    | expr "," expr             { Binop "," $1 $3 }

type_specifier
    : VOID                      { Void }
    | CHAR                      { Char }
    | SHORT                     { Short }
    | INT                       { Int }
    | LONG                      { Long }
    | LONG LONG                 { LongLong }
    | FLOAT                     { Float }
    | DOUBLE                    { Double }
    | UNSIGNED INT              { UnsignedInt }
    | UNSIGNED CHAR             { UnsignedChar }
    | UNSIGNED LONG             { UnsignedLong }
    | UNSIGNED SHORT            { UnsignedShort }
    | UNSIGNED LONG LONG        { UnsignedLongLong }

declarand_list
    :                                   { [] }
    | ID                                { [($1, Nothing)] }
    | ID "=" expr                       { [($1, Just $3)] }
    | declarand_list "," ID             { ($3, Nothing) : $1 }
    | declarand_list "," ID "=" expr    { ($3, Just $5) : $1 }

declaration
    : type_specifier declarand_list ";"           { VarDecl $1 (reverse $2) }

declarations
    :                                   { [] }
    | declarations declaration          { $2 : $1 }

{
parseError _ = error "Parse Error"
}
