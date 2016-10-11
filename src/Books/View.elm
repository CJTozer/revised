module Books.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import Html.App

import Books.Models exposing (Book)
import Books.Messages exposing (..)

import Styles

bookList : List Book -> Html Msg
bookList books =
    let
        bookRow : Book -> Html Msg
        bookRow book =
            tr [ onClick (ShowBook book), Styles.clickable ]
                [ td []
                    [ text book.title ]
                , td []
                    [ text book.author ]
                ]
    in
        div [ class "container" ]
            [ h1 [] [ text "Books" ]
            , div []
                [ table [ class "bordered highlight" ]
                    [ thead []
                        [ tr []
                            [ th [] [ text "Title" ]
                            , th [] [ text "Author" ]
                            ]
                        ]
                    , tbody []
                        (List.map bookRow books)
                    ]
                ]
            ]

bookHeader : Book -> Html Msg
bookHeader book =
    h1 [] [ text book.title ]
