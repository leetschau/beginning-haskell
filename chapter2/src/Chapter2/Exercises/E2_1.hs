module Chapter2.Exercises.E2_1 where

-- Rewrite the previous list literals using only (:)
-- and the empty list constructor []:
-- [['a','b','c'],['d','e']])
a1 = ('a' : 'b' : 'c' : []) : ('d' : 'e' : []) : []

-- Write an expression that checks whether a list is empty,
-- [], or its first element is empty, like [[],['a','b']].
a21 = null []
a22 = null $ head [[], ['a','b']]

-- Write an expression that checks whether a list has only one element.
-- It should return True for ['a'] and False for [] or ['a','b'].
a31 = length ['a'] == 1
a32 = length [] == 1
a33 = length ['a','b'] == 1

-- Write an expression that concatenates two lists given inside another lists.
-- For example, it should return "abcde" for ["abc","de"].
a4 = head a1 ++ last a1
