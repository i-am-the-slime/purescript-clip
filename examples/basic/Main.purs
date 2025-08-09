module Main where

import Prelude

import Clip (getClipboard, setClipboard)
import Effect (Effect)
import Effect.Console (log)

main :: Effect Unit
main = do
  log "Setting clipboard to 'Hello from PureScript!'"
  setClipboard "Hello from PureScript!"
  
  log "Reading clipboard contents:"
  content <- getClipboard
  log ("Clipboard contains: " <> content)