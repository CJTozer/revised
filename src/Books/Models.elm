module Books.Models exposing (..)

type alias Model =
    List Book
type alias Book =
    { book_id: Int
    , title : String
    , author : String
    , resources: Maybe (List Int)
    }
