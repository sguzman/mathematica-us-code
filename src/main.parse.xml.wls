Flatten[
 ParallelMap[
  Cases[
    Import[#, "XML"],
    XMLElement[tag_,
      {___, "identifier" -> id_}, {
       ___,
       XMLElement[
        Pattern[container,
         "content"
          | "heading"
          | "chapeau"
         ], _, {Pattern[content, XMLElement[_, _, {text_}]], ___}],
       ___
       }]
     :> {
      "id" ->
       StringTrim[
        StringReplace[
         StringJoin[id, tag, container]
         , ("/" | "-" | "\[Dash]" | ".") -> ""]
        , "_" | "-" | "/"],
      "categories" -> StringSplit[id, "/"],
      "tag" -> tag,
      "container" -> container,
      "text" -> text
      }
    , \[Infinity]] &,
  FileNames[__ ~~ ".xml", "/home/sguzman/Code/docs/us-code"]]
 , 1]