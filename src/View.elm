module View exposing (..)

import Html exposing (Html, div, text)

import Models exposing (Model)
import Messages exposing (Msg)
import Layouts exposing (Layout(..))

import Books.View exposing (bookList)


view : Model -> Html Msg
view model =
    case model.layout of
        FrontPage ->
            div []
                [ bookList model.books ]
