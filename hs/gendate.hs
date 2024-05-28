#!/usr/bin/env runhaskell

import Data.Time

main :: IO ()
main = do
  let startDate = fromGregorian 1970 1 1
      endDate = fromGregorian 3000 1 1
      dateRange = [startDate .. endDate]
      dateStrings = map (formatTime defaultTimeLocale "%Y-%m-%d") dateRange
  mapM_ putStrLn dateStrings
