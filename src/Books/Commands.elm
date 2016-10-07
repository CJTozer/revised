module Books.Commands exposing (..)

import Http
import Json.Decode as Decode exposing ((:=))
import Task
import Books.Models exposing (Book)
import Books.Messages exposing (..)

import BookResources.Models exposing (BookResource)
import BookResources.Commands exposing (resourceDecoder)


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
    Decode.object3 Book
        ("title" := Decode.string)
        ("author" := Decode.string)
        (Decode.maybe ("resources" := Decode.list resourceDecoder))
