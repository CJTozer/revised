module Books.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)

import Books.Models exposing (Book)
import Messages exposing (Msg)


bookList : List Book -> Html Msg
bookList books =
    let
        bookRow : Book -> Html Msg
        bookRow book =
            tr []
                [ td []
                    [ text book.title ]
                , td []
                    [ text book.author ]
                ]
    in
        div []
            [ table [ class "bordered highlight" ]
                [ thead []
                    [ tr []
                        [ th [] [ text "Title" ]
                        , th [] [ text "Author" ]
                        ]
                    ]
                , tbody []
                    ( List.map bookRow books )
                ]
            ]

