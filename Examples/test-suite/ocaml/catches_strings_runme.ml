open Swig
open Catches_strings

let _ =
  try
    ignore (_StringsThrower_charstring (C_void)); assert false
  with Failure s ->
    assert (s = "charstring message")
