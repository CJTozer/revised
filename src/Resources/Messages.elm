module Resources.Messages exposing (..)

import Http

import Resources.Models exposing (Resource)

type Msg
    = GetResource Int
    | FetchDone Resource
    | FetchFail Http.Error
