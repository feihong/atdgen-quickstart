(* Auto-generated from "example.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type example = Example_t.example = {
  numbers: int Atdgen_runtime.Util.ocaml_array
}

let write__1 = (
  Atdgen_codec_runtime.Encode.array (
    Atdgen_codec_runtime.Encode.int
  )
)
let read__1 = (
  Atdgen_codec_runtime.Decode.array (
    Atdgen_codec_runtime.Decode.int
  )
)
let write_example = (
  Atdgen_codec_runtime.Encode.make (fun (t : example) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field
            (
            write__1
            )
          ~name:"numbers"
          t.numbers
      ]
    )
  )
)
let read_example = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          numbers =
            Atdgen_codec_runtime.Decode.decode
            (
              read__1
              |> Atdgen_codec_runtime.Decode.field "numbers"
            ) json;
      } : example)
    )
  )
)