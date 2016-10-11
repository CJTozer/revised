module Resources.Commands exposing (..)

import Http
import Json.Decode as Decode exposing ((:=))
import Task
import Resources.Models exposing (Resource)
import Resources.Messages exposing (Msg(..))


fetchOneResource : Int -> Cmd Msg
fetchOneResource resourceId =
    Http.get resourceDecoder (fetchResourceUrl resourceId)
        |> Task.perform FetchFail FetchDone


fetchResourceUrl : Int -> String
fetchResourceUrl resourceId =
    "https://revised-server.herokuapp.com/v1/resources/" ++ toString (resourceId)


resourceDecoder : Decode.Decoder Resource
resourceDecoder =
    Decode.object3 Resource
        ("resource_id" := Decode.int)
        ("resource_type" := Decode.string)
        ("text" := Decode.string)
