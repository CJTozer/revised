module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)

import Models exposing (Model)
import Messages exposing (Msg)
import Layouts exposing (Layout(..))

import Books.View exposing (bookList, bookDetails)
import Components.Header exposing (pageHeader)
import Components.Footer exposing (pageFooter)


view : Model -> Html Msg
view model =
    case model.layout of
        FrontPage ->
            div []
                [ pageHeader
                , main' [] [ bookList model.books ]
                , pageFooter
                ]
        BookPage book ->
            div []
                [ pageHeader
                , main' [] [ bookDetails book ]
                , pageFooter
                ]
