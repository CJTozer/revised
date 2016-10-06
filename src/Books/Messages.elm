module Books.Messages exposing (..)

import Http
import Books.Models exposing (Book)


type Msg
    = FetchAllDone (List Book)
    | FetchAllFail Http.Error
