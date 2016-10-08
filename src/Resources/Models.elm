module Resources.Models exposing (..)

type alias Model =
    List Resource
type alias Resource =
    { chapter : Int
    , order : Int
    , text : String
    }

initialModel =
    [ 1, 2, 3 ]
