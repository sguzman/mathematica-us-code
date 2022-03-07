#!/usr/local/Wolfram/Mathematica/13.0/Executables/wolframscript -function -signature String

First /@
Tally@
Cases[
  Import[#,"XML"],
  XMLElement[tag_,
    {__, "identifier" -> identifier_},
  __] -> tag
, \[Infinity]]&