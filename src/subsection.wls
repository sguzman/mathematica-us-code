#!/usr/local/Wolfram/Mathematica/13.0/Executables/wolframscript -function -signature String

Cases[
  Import[#,"XML"],
  XMLElement["subsection",
    {__, "identifier" -> identifier_}, {
      XMLElement["num", {"value" -> value_}, __],
  __}] -> {identifier, value}
, \[Infinity]]&