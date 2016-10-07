module View exposing (..)

import Html exposing (..)
import Html.App
import Html.Attributes exposing (class)

import Models exposing (Model)
import Messages exposing (..)
import Routing exposing (Route(..))

import Books.View exposing (bookList, bookDetails)
import Components.Header exposing (pageHeader)
import Components.Footer exposing (pageFooter)


view : Model -> Html Msg
view model =
    case model.route of
        BooksRoute ->
            div []
                [ pageHeader
                , main' [] [ Html.App.map BooksMsg (bookList model.books) ]
                , pageFooter
                ]
        BookRoute bookID ->
            let
                -- TODO Get the right book by it's ID
                book = List.head model.books
            in
                case book of
                    Just b ->
                        div []
                            [ pageHeader
                            , main' [] [ Html.App.map BooksMsg (bookDetails b) ]
                            , pageFooter
                            ]
                    Nothing ->
                        div []
                            [ pageHeader
                            , main' [] [ text "BOOK NOT FOUND" ]
                            , pageFooter
                            ]
        NotFoundRoute ->
            div []
                [ pageHeader
                , main' [] [ text "PAGE NOT FOUND" ]
                , pageFooter
                ]
