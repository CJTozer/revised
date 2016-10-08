module BookResources.Commands exposing (..)

import Http
import Json.Decode as Decode exposing ((:=))
import Task
import BookResources.Models exposing (BookResource)
--import BookResources.Messages exposing (..)


--fetchAll : Cmd Msg
--fetchAll =
--    Http.get bookListDecoder fetchBooksListUrl
--        |> Task.perform FetchAllFail FetchAllDone


--fetchBooksListUrl : String
--fetchBooksListUrl =
--    "http://revised-server.herokuapp.com/v1/books"


resourceDecoder : Decode.Decoder BookResource
resourceDecoder =
    Decode.object3 BookResource
        ("chapter" := Decode.int)
        ("order" := Decode.int)
        ("text" := Decode.string)
