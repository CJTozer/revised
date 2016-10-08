module Books.Messages exposing (..)

import Http
import Books.Models exposing (Book)
import Resources.Messages

type Msg
    = FetchAllDone (List Book)
    | FetchAllFail Http.Error
    | ShowBook Int
    | ResourceMsg Resources.Messages.Msg
