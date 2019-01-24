let example = {Example_t.numbers: [|1, 2, 3, 4, 5|], text: "Hello there"};

Js.log2("Record:", example);

Js.log2("JS:", Example_bs.write_example(example));
