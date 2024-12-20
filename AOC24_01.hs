import Data.List

main :: IO ()
main = do
    content <- readFile "data/AOC24_01.txt"
    let (list1, list2) = unzip $ map ((\[x, y] -> (read x, read y)) . words) $ lines content
    print $ sum $ map abs $ zipWith (-) (sort list1) (sort list2)
    