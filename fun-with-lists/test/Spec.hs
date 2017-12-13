import Test.QuickCheck(quickCheck)

import Lib(quickSort)
import Data.List(sort)

main :: IO ()
main = quickCheck testSort

testSort :: [Integer] -> Bool
testSort xs = sort xs == quickSort xs
