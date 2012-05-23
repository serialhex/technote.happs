{-# LANGUAGE OverloadedStrings #-}

module Templates where

import           Text.Blaze ((!))
import qualified Text.Blaze.Html4.Strict as H
import qualified Text.Blaze.Html4.Strict.Attributes as A

appTemplate :: String -> [H.Html] -> H.Html -> H.Html
appTemplate title headers body =
  H.html $ do
    H.head $ do
      H.title (H.toHtml title)
      H.meta ! A.httpEquiv "Content-Type" ! A.content "text/html;charset=utf-8"
      sequence_ headers
    H.body $ do
      body