module Books.Commands exposing (..)

import Http
import Json.Decode as Decode exposing ((:=))
import Task
import Books.Models exposing (Book)
import Books.Messages exposing (..)


fetchAll : Cmd Msg
fetchAll =
    Http.get collectionDecoder fetchAllUrl
        |> Task.perform FetchAllFail FetchAllDone


fetchAllUrl : String
fetchAllUrl =
    "https://revised-server.herokuapp.com/v1/books"


collectionDecoder : Decode.Decoder (List Book)
collectionDecoder =
    Decode.list memberDecoder


memberDecoder : Decode.Decoder Book
memberDecoder =
    Decode.object2 Book
        ("title" := Decode.string)
        ("author" := Decode.string)
