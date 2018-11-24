module Main where
import Lexer
import Parser

main :: IO ()
main = do
    x <- getLine
    putStrLn $ show $ parse $ alexScanTokens x
