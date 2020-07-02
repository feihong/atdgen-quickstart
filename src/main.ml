#require "atd";;
#require "atdgen-runtime";;
#mod_use "src/Example_t.ml";;
#mod_use "src/Example_j.ml";;

(* let example = {
  Example_t.numbers = [|1; 2; 3; 4; 5|];
  text = "Hello there";
  level = 9007199254740992L;
  lives = 12;
  stuff = Some 33 ;
}
in
print_endline example.text;
print_endline @@ Example_j.string_of_example example; *)

let json = {|{"text":"Hello there","numbers":[1,2,3,4,5],"level":9007199254740992,"lives":12,"stuff":33}|} in
let example = Example_j.example_of_string json in
print_endline @@ Printf.sprintf "text = %s; lives = %d; level = %Ld" example.text example.lives example.level;
