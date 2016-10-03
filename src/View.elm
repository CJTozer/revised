module View exposing (..)

import Html exposing (Html, div, text)

import Models exposing (Model)
import Messages exposing (Msg)

view : Model -> Html Msg
view model =
    div []
        [ text model ]
