#!/usr/bin/env runhaskell

import Data.Time
import Data.Time.Format (defaultTimeLocale, formatTime)

isLeapYearCustom :: Integer -> Bool
isLeapYearCustom year = (year `mod` 4 == 0 && year `mod` 100 /= 0) || (year `mod` 400 == 0)

dateToString :: Day -> String
dateToString date = formatTime defaultTimeLocale "%Y-%m-%d" date

incrementDate :: Day -> Day
incrementDate = addDays 1

mainLoop :: Day -> IO ()
mainLoop currentDate = do
  let dateStr = dateToString currentDate
  putStrLn dateStr
  let (year, month, day) = toGregorian currentDate
      isLeap = not (isLeapYearCustom year) && month == 2 && day == 29
      isEnd = year == 3000 && month == 1 && day == 1
  if not (isLeap || isEnd)
    then mainLoop (incrementDate currentDate)
    else return ()

main :: IO ()
main = do
  let startDate = fromGregorian 1970 1 1
  mainLoop startDate
