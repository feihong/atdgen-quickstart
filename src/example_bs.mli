(* Auto-generated from "example.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type example = Example_t.example = {
  text: string;
  numbers: int Atdgen_runtime.Util.ocaml_array;
  lives: int
}

val read_example :  example Atdgen_codec_runtime.Decode.t

val write_example :  example Atdgen_codec_runtime.Encode.t

