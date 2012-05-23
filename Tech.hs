{-# LANGUAGE OverloadedStrings #-}
module Tech where

import            Templates
import            Happstack.Server (ServerPart, Response, ok, toResponse)
import            Text.Blaze ((!))
import qualified  Text.Blaze.Html4.Strict as H
import qualified  Text.Blaze.Html4.Strict.Attributes as A

tech :: ServerPart Response
tech name =
  ok $ toResponse $
    appTemplate "Technician found!"
                [H.meta ! A.name "keywords" ! A.content "happpstack, technician, html"]
                (H.p "You have found technician " ++ name)

--name :: ServerPart String
--name = path $ \s -> s

