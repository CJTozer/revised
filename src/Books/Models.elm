module Books.Models exposing (..)

type alias Model =
    List Book
type alias Book =
    { title : String
    , author : String
    }
