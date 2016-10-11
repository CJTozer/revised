module Resources.Messages exposing (..)

import Http
import Resources.Models exposing (Resource)


type Msg
    = FetchDone Resource
    | FetchFail Http.Error
