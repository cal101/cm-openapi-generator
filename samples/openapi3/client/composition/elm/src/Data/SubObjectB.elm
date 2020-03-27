{-
   Composition and Inheritence (Polymorphism)
   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   The version of the OpenAPI document: 1.0.0

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.SubObjectB exposing (SubObjectB, decoder, encode, encodeWithTag, toString)

import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias SubObjectB =
    { value : Bool
    , valueB : Maybe Float
    }


decoder : Decoder SubObjectB
decoder =
    Decode.succeed SubObjectB
        |> required "value" Decode.bool
        |> optional "valueB" (Decode.nullable Decode.float) Nothing


encode : SubObjectB -> Encode.Value
encode =
    Encode.object << encodePairs


encodeWithTag : ( String, String ) -> SubObjectB -> Encode.Value
encodeWithTag ( tagField, tag ) model =
    Encode.object <| encodePairs model ++ [ ( tagField, Encode.string tag ) ]


encodePairs : SubObjectB -> List ( String, Encode.Value )
encodePairs model =
    [ ( "value", Encode.bool model.value )
    , ( "valueB", Maybe.withDefault Encode.null (Maybe.map Encode.float model.valueB) )
    ]


toString : SubObjectB -> String
toString =
    Encode.encode 0 << encode