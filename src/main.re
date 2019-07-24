let example = {
  Example_t.numbers: [|1, 2, 3, 4, 5|],
  text: "Hello there",
  lives: 12,
};

// will print array
Js.log2("Record:", example);

// will print object
Js.log2("JS:", Example_bs.write_example(example));

let json =
  Json.parseOrRaise(
    {|{"numbers": [5,4,3], "text": "string", "lives": "not right"}|},
  );
Js.log2("Decoded record:", Example_bs.read_example(json));
