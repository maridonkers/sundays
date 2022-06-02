{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

import qualified Options.Applicative as OA
import Sundays

data Args = Args String

args :: OA.Parser Args
args =
  Args
    <$> OA.strArgument
      ( OA.value "2022"
          <> OA.help "year."
      )

argsInfo :: OA.ParserInfo Args
argsInfo =
  OA.info
    args
    ( OA.fullDesc
        <> OA.progDesc "optional parameter [yyyy] which is the year."
    )

main :: IO ()
main = do
  Args target <- OA.execParser argsInfo
  let y = read target :: Integer
  sundays y
