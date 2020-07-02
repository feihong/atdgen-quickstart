let example = {
  Example_t.numbers: [|1, 2, 3, 4, 5|],
  text: "Hello there",
  level: 9007199254740992L,
  lives: 12,
  stuff: Some(33),
};

// will print array
Js.log2("Record:", example);

// will print object
Js.log2("JS:", Example_bs.write_example(example));

let json =
  Json.parseOrRaise(
    {|{"numbers": [5,4,3], "text": "string", "level": "9007199254740995"}|},
  );
let record = Example_bs.read_example(json);
Js.log2("Decoded record:", record);
Js.log2("Decoded level:", record.level);
Js.log2("Decoded level (as string):", record.level->Int64.to_string);
