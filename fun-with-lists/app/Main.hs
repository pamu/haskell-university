{-# LANGUAGE ScopedTypeVariables #-}
module Main where

import           qualified Lib

import           System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let newList = (\str -> read str :: Int) <$> args
  let sortedList = Lib.quickSort newList
  print sortedList
