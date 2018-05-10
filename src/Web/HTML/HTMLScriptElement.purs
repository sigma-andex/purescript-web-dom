module Web.HTML.HTMLScriptElement where

import Effect (Effect)
import Foreign (Foreign, F, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLScriptElement :: Type

toHTMLElement :: HTMLScriptElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLScriptElement
read = unsafeReadTagged "HTMLScriptElement"

foreign import src :: HTMLScriptElement -> Effect String
foreign import setSrc :: String -> HTMLScriptElement -> Effect Unit

foreign import type_ :: HTMLScriptElement -> Effect String
foreign import setType :: String -> HTMLScriptElement -> Effect Unit

foreign import charset :: HTMLScriptElement -> Effect String
foreign import setCharset :: String -> HTMLScriptElement -> Effect Unit

foreign import async :: HTMLScriptElement -> Effect Boolean
foreign import setAsync :: Boolean -> HTMLScriptElement -> Effect Unit

foreign import defer :: HTMLScriptElement -> Effect Boolean
foreign import setDefer :: Boolean -> HTMLScriptElement -> Effect Unit

foreign import crossOrigin :: HTMLScriptElement -> Effect String
foreign import setCrossOrigin :: String -> HTMLScriptElement -> Effect Unit

foreign import text :: HTMLScriptElement -> Effect String
foreign import setText :: String -> HTMLScriptElement -> Effect Unit