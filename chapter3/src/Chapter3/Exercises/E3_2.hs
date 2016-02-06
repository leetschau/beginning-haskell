module Chapter3.Exercises.E3_2 where

filterOnes :: [Int] -> [Int]
filterOnes [] = []
filterOnes lst = filter (\x -> x == 1) lst

filterANumber :: Int -> [Int] -> [Int]
filterANumber _ [] = []
filterANumber x lst = filter (\y -> y == x) lst

filterNot :: Int -> [Int] -> [Int]
filterNot _ [] = []
filterNot x lst = filter (\y -> y /= x) lst

-- filterGovOrgs :: [ClientR] -> [ClientR]
