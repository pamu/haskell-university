module Lib
  ( quickSort
  ) where

import qualified Data.List as L

quickSort :: Ord a => [a] -> [a]
quickSort [] = []
quickSort (x:xs) =
  let (left, right) = L.partition (<= x) xs
  in quickSort left ++ [x] ++ quickSort right
