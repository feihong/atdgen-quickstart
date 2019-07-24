// Generated by BUCKLESCRIPT VERSION 4.0.18, PLEASE EDIT WITH CARE
'use strict';

var Json = require("@glennsl/bs-json/src/Json.bs.js");
var Curry = require("bs-platform/lib/js/curry.js");
var Example_bs$AtdgenQuickstart = require("./example_bs.bs.js");

var example_001 = /* numbers : array */[
  1,
  2,
  3,
  4,
  5
];

var example = /* record */[
  /* text */"Hello there",
  example_001,
  /* lives */12
];

console.log("Record:", example);

console.log("JS:", Curry._1(Example_bs$AtdgenQuickstart.write_example, example));

var json = Json.parseOrRaise("{\"numbers\": [5,4,3], \"text\": \"string\", \"lives\": \"not right\"}");

console.log("Decoded record:", Curry._1(Example_bs$AtdgenQuickstart.read_example, json));

exports.example = example;
exports.json = json;
/*  Not a pure module */
