module Chapter2.Exercises.E2_6 where

-- Define the famous Ackermann function. Try using guard:
ackermann :: Integer -> Integer -> Integer
ackermann 0 n = n + 1
ackermann m 0 | m > 0 = ackermann (m-1) 1
ackermann m' n' | m' > 0 && n' > 0 = ackermann (m'-1) (ackermann m' (n'-1))

-- solution of http://rosettacode.org/wiki/Ackermann_function#Haskell
ack :: Integer -> Integer -> Integer
ack 0 n = n + 1
ack m 0 = ack (m-1) 1
ack m n = ack (m-1) (ack m (n-1))

-- Define the unzip function, which takes a list of tuples and returns two lists,
-- one with all the first components and other one with the seconds.
-- For example, unzip [(1,2),(3,4)] = ([1,3],[2,4])
unzip1 :: [(a, a)] -> ([a], [a])
unzip1 [] = ([], [])
-- unzip1 [(x, y)] = ([x], [y])
unzip1 ((x, y) : ts) = (x : (fst $ unzip1 ts), y : (snd $ unzip1 ts))
