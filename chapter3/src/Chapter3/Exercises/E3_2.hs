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

-- data definitions are copied from chapter2/src/Chapter2/DataTypes.hs
data ClientR = GovOrgR  { clientRName :: String }
             | CompanyR { clientRName :: String
                        , companyId :: Integer
                        , person :: PersonR
                        , duty :: String }
             | IndividualR { person :: PersonR }
             deriving Show

data PersonR = PersonR { firstName :: String
                       , lastName :: String
                       } deriving Show

-- test: filterGovOrgs [GovOrgR "NLC", IndividualR { person = PersonR { lastName = "Smith", firstName = "John" } }]
filterGovOrgs :: [ClientR] -> [ClientR]
filterGovOrgs [] = []
filterGovOrgs lst = filter (\x -> isGovOrgs(x)) lst
                    where isGovOrgs (GovOrgR _) = True
                          isGovOrgs (CompanyR _ _ _ _) = False
                          isGovOrgs (IndividualR _) = False
