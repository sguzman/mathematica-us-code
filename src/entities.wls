#!/usr/bin/env wolframscript

Print[First /@ Tally@
  Cases[
  ImportString[$ScriptInputString,"XML"],
   XMLElement[tag_,
     {__, "identifier" -> identifier_},
     __] -> tag
   , \[Infinity]]
]