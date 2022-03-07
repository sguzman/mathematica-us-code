#!/usr/local/Wolfram/Mathematica/13.0/Executables/wolframscript -function -signature String

Cases[
  Import[#,"XML"],
  XMLElement[tag_, {__, "identifier" -> id_}, _
  ] :> {Splice@StringSplit[id, "/"], tag}
, \[Infinity]]&