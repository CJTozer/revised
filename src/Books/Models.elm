module Books.Models exposing (..)

import BookResources.Models exposing (BookResource)

type alias Model =
    List Book
type alias Book =
    { title : String
    , author : String
    , resources: List BookResource
    }
