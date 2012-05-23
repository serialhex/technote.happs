
{- Top-level module for my Technote App...  derr! -}

module Main where

import Control.Monad      (msum)
import Happstack.Server   (ServerPart, nullConf, simpleHTTP, ok, dir)

import Tech
--import Workorder

main :: IO ()
main = simpleHTTP nullConf $ msum [ dir "tech"      $ path $ \n -> tech n
                                  , dir "workorder" $ undef
                                  ]

-- i cheated
undef :: ServerPart String
undef = do
  ok "Undefined...  for now"

