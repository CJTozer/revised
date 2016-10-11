module Books.Messages exposing (..)

import Http
import Books.Models exposing (Book)
import Resources.Messages
import Layouts


type Msg
    = FetchAllDone (List Book)
    | FetchAllFail Http.Error
    | ShowBook Book
