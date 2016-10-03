module Books.Models exposing (..)

type alias Model =
    List Book
type alias Book =
    { title : String
    , author : String
    }


initialModel : Model
initialModel =
    -- @@@ Should go off and get books from the backend
    [ Book "Longitude" "Dava Sobel"
    , Book "Peter the Great" "Robert K. Massie"
    ]
