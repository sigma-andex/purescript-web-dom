module Web.HTML.HTMLFormElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLFormElement :: Type

toHTMLElement :: HTMLFormElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLFormElement
read = unsafeReadTagged "HTMLFormElement"

foreign import acceptCharset :: HTMLFormElement -> Effect String
foreign import setAcceptCharset :: String -> HTMLFormElement -> Effect Unit

foreign import action :: HTMLFormElement -> Effect String
foreign import setAction :: String -> HTMLFormElement -> Effect Unit

foreign import autocomplete :: HTMLFormElement -> Effect String
foreign import setAutocomplete :: String -> HTMLFormElement -> Effect Unit

foreign import enctype :: HTMLFormElement -> Effect String
foreign import setEnctype :: String -> HTMLFormElement -> Effect Unit

foreign import encoding :: HTMLFormElement -> Effect String
foreign import setEncoding :: String -> HTMLFormElement -> Effect Unit

foreign import method :: HTMLFormElement -> Effect String
foreign import setMethod :: String -> HTMLFormElement -> Effect Unit

foreign import name :: HTMLFormElement -> Effect String
foreign import setName :: String -> HTMLFormElement -> Effect Unit

foreign import noValidate :: HTMLFormElement -> Effect Boolean
foreign import setNoValidate :: Boolean -> HTMLFormElement -> Effect Unit

foreign import target :: HTMLFormElement -> Effect String
foreign import setTarget :: String -> HTMLFormElement -> Effect Unit

--   readonly attribute HTMLFormControlsCollection elements;

foreign import length :: HTMLFormElement -> Effect Int

--   getter Element (unsigned long index);
--   getter (RadioNodeList or Element) (DOMString name);

foreign import submit :: HTMLFormElement -> Effect Unit
foreign import reset :: HTMLFormElement -> Effect Unit
foreign import checkValidity :: HTMLFormElement -> Effect Boolean