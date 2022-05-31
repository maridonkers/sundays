module Sundays where

import Data.Time
import Data.Time.Calendar.MonthDay

sundays :: Integer -> IO ()
sundays y = do
    let daysyr = if isLeapYear y then 366 else 365
    cd <- utctDay <$> getCurrentTime
    putStrLn "yyyy-mm-dd\t C   F   H   M"
    mapM_
        (\(_, s) -> putStrLn $ show s ++ "\t[ ] [ ] [ ] [x]")
        ( filter
            (\(c, w) -> diffDays w c > 0 && (dayOfWeek w) == Sunday)
            [ (cd, g)
            | day <- [1 .. daysyr]
            , let (m, d) = dayOfYearToMonthAndDay False day
            , let g = fromGregorian y m d
            ]
        )
