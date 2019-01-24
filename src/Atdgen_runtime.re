/* This module doesn't implement the full runtime, it just supplies the array
   type */
module Util = {
  type ocaml_array('a) = array('a);
};
