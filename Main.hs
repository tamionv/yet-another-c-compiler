module Main where
import Lexer
import Parser
import Intermediate
import Data.List
import SyntaxToIntermediate

myShow (Seq ls) = unlines $ map myShow ls
myShow x = show x

main :: IO ()
main = do
    x <- getLine
    putStrLn $ show $ parse $ alexScanTokens x
    putStrLn $ unlines $ filter (/="") $ map myShow $ gen_program $ parse $ alexScanTokens x
