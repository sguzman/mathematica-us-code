#!/usr/local/Wolfram/Mathematica/13.0/Executables/wolframscript -function -signature String

Cases[
  Import[#,"XML"],
  XMLElement["section",
    {__, "identifier" -> identifier_}, {
      XMLElement["num", {"value" -> value_}, __],
      XMLElement["heading", __, {text_}]
    , __}] -> {Splice@StringSplit[identifier, "/"], value, text}
 , \[Infinity]]&