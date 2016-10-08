module Resources.Models exposing (..)

type alias Model =
    List Resource
type alias Resource =
    { resource_id : Int
    , resource_type : String
    , text : String
    }
