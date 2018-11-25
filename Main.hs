module Main where
import Lexer
import Parser
import Intermediate
import Data.List
import SyntaxToIntermediate

main :: IO ()
main = do
    x <- getLine
    putStrLn $ show $ parse $ alexScanTokens x
    putStrLn $ unlines $ map show $ flatten $ gen_program $ parse $ alexScanTokens x
