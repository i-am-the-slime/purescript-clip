module Clip 
  ( getClipboard
  , setClipboard
  ) where

import Prelude

import Effect (Effect)
import Effect.Uncurried (EffectFn1, runEffectFn1)

-- | Get the current clipboard contents
foreign import getClipboard :: Effect String

-- | Set the clipboard contents
foreign import setClipboardImpl :: EffectFn1 String Unit

-- | Set the clipboard to the given string
setClipboard :: String -> Effect Unit
setClipboard = runEffectFn1 setClipboardImpl