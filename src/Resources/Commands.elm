module Resources.Commands exposing (..)

import Http
import Json.Decode as Decode exposing ((:=))
import Task
import Resources.Models exposing (Resource)
--import Resources.Messages exposing (..)


--fetchAll : Cmd Msg
--fetchAll =
--    Http.get bookListDecoder fetchBooksListUrl
--        |> Task.perform FetchAllFail FetchAllDone


--fetchBooksListUrl : String
--fetchBooksListUrl =
--    "http://revised-server.herokuapp.com/v1/books"


resourceDecoder : Decode.Decoder Resource
resourceDecoder =
    Decode.object3 Resource
        ("chapter" := Decode.int)
        ("order" := Decode.int)
        ("text" := Decode.string)
