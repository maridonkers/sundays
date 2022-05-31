{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

import Sundays

import qualified Options.Applicative as OA

data Args = Args String

args :: OA.Parser Args
args =
    Args
        <$> OA.strArgument
            ( OA.value "2022"
                <> OA.help "year."
            )

argsInfo :: OA.ParserInfo Args
argsInfo = OA.info args OA.fullDesc

main :: IO ()
main = do
    Args target <- OA.execParser argsInfo
    let y = read target :: Integer
    sundays y
