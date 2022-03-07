#!/usr/local/Wolfram/Mathematica/13.0/Executables/wolframscript -function -signature String

Cases[
  Import[#,"XML"],,
  XMLElement["meta", __, {
    XMLElement[{"http://purl.org/dc/elements/1.1/", "title"}, __, {title_}],
    XMLElement[{"http://purl.org/dc/elements/1.1/", "type"}, __, {type_}],
    XMLElement["docNumber", __, {docNumber_}],
    XMLElement["docPublicationName", __, {docPublicationName_}],
    XMLElement["property", __, {property_}],
    XMLElement[{"http://purl.org/dc/elements/1.1/", "publisher"}, __, {publisher_}],
    XMLElement[{"http://purl.org/dc/terms/", "created"}, __, {created_}],
    XMLElement[{"http://purl.org/dc/elements/1.1/", "creator"}, __, {creator_}]
  }] -> {title, type, docNumber, docPublicationName, property, 
   publisher, created, creator}
, \[Infinity]]