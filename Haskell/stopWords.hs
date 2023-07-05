import Data.Char (isAlpha, isDigit)
import Data.List 

filtraPalavras :: String -> String
filtraPalavras = unwords . filter(\w -> length w > 3) . words . map (\c -> if isAlpha c || isDigit c || c `elem` "'.-" then c else ' ')

main = do
    input <- getLine
    putStrLn (filtraPalavras input)
