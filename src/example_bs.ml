(* Auto-generated from "example.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type example = Example_t.example = {
  text: string;
  numbers: int Atdgen_runtime.Util.ocaml_array;
  lives: int;
  stuff: int option
}

let write__2 = (
  Atdgen_codec_runtime.Encode.option_as_constr (
    Atdgen_codec_runtime.Encode.int
  )
)
let read__2 = (
  Atdgen_codec_runtime.Decode.option_as_constr (
    Atdgen_codec_runtime.Decode.int
  )
)
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
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"text"
          t.text
        ;
          Atdgen_codec_runtime.Encode.field
            (
            write__1
            )
          ~name:"numbers"
          t.numbers
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.int
            )
          ~name:"lives"
          t.lives
        ;
          Atdgen_codec_runtime.Encode.field_o
            (
            Atdgen_codec_runtime.Encode.int
            )
          ~name:"stuff"
          t.stuff
      ]
    )
  )
)
let read_example = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          text =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "text"
            ) json;
          numbers =
            Atdgen_codec_runtime.Decode.decode
            (
              read__1
              |> Atdgen_codec_runtime.Decode.field "numbers"
            ) json;
          lives =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.int
              |> Atdgen_codec_runtime.Decode.fieldDefault "lives" 9
            ) json;
          stuff =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.int
              |> Atdgen_codec_runtime.Decode.fieldOptional "stuff"
            ) json;
      } : example)
    )
  )
)
