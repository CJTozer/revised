module Books.Commands exposing (..)

import Http
import Json.Decode as Decode exposing ((:=))
import Task
import Books.Models exposing (Book)
import Books.Messages exposing (..)

import Resources.Models exposing (Resource)
import Resources.Commands exposing (resourceDecoder)


fetchAll : Cmd Msg
fetchAll =
    Http.get bookListDecoder fetchBooksListUrl
        |> Task.perform FetchAllFail FetchAllDone


fetchBooksListUrl : String
fetchBooksListUrl =
    "https://revised-server.herokuapp.com/v1/books"


bookListDecoder : Decode.Decoder (List Book)
bookListDecoder =
    Decode.list bookDecoder


bookDecoder : Decode.Decoder Book
bookDecoder =
    Decode.object4 Book
        ("book_id" := Decode.int)
        ("title" := Decode.string)
        ("author" := Decode.string)
        (Decode.maybe ("resources" := Decode.list Decode.int))
