module Books.Messages exposing (..)

import Http
import Books.Models exposing (Book)
import BookResources.Messages

type Msg
    = FetchAllDone (List Book)
    | FetchAllFail Http.Error
    | ShowBook -- BookID
    | ResourceMsg BookResources.Messages.Msg
