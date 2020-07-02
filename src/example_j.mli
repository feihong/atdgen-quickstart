(* Auto-generated from "example.atd" *)
[@@@ocaml.warning "-27-32-35-39"]

type example = Example_t.example = {
  text: string;
  numbers: int Atdgen_runtime.Util.ocaml_array;
  level: Int64.t;
  lives: int;
  stuff: int option
}

val write_example :
  Bi_outbuf.t -> example -> unit
  (** Output a JSON value of type {!example}. *)

val string_of_example :
  ?len:int -> example -> string
  (** Serialize a value of type {!example}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_example :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> example
  (** Input JSON data of type {!example}. *)

val example_of_string :
  string -> example
  (** Deserialize JSON data of type {!example}. *)

