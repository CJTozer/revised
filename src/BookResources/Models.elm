module BookResources.Models exposing (..)

type alias Model =
    List BookResource
type alias BookResource =
    { chapter : Int
    , order : Int
    , text : String
    }

initialModel =
    [ BookResource 1 2 "Test" ]
