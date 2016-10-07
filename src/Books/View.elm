module Books.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)

import Books.Models exposing (Book)
import Messages exposing (Msg)

import BookResources.View exposing (resourcesList)

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
                        ( List.map bookRow books )
                    ]
                ]
            ]

bookDetails : Book -> Html Msg
bookDetails book =
    div [ class "container" ]
        [ h1 [] [ text book.title ]
        , resourcesList book.resources
        ]
