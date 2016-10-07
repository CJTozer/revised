module Books.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import Html.App

import Books.Models exposing (Book)
import Books.Messages exposing (..)

import BookResources.View exposing (resourcesList)
import BookResources.Models exposing (initialModel)

import Styles

bookList : List Book -> Html Msg
bookList books =
    let
        bookRow : Book -> Html Msg
        bookRow book =
            -- @@@ Need Book ID
            tr [ onClick (ShowBook), Styles.clickableRow ]
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

bookDetails : Book -> Html Msg
bookDetails book =
    div [ class "container" ]
        [ h1 [] [ text book.title ]
        , Html.App.map ResourceMsg (resourcesList (Maybe.withDefault initialModel book.resources))
        ]
