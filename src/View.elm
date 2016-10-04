module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)

import Models exposing (Model)
import Messages exposing (Msg)
import Layouts exposing (Layout(..))

import Books.View exposing (bookList)
import Components.Header exposing (pageHeader)
import Components.Footer exposing (pageFooter)


view : Model -> Html Msg
view model =
    case model.layout of
        FrontPage ->
            div []
                [ pageHeader
                , main' [] [
                    div [ class "container" ]
                        [ h1 [] [ text "Books" ]
                        , bookList model.books
                        ]
                    ]
                , pageFooter
                ]
