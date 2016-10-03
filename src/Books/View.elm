module Books.View exposing (..)

import Html exposing (..)

import Books.Models exposing (Book)
import Messages exposing (Msg)


bookList : List Book -> Html Msg
bookList books =
    div []
        [ table []
            [ thead []
                [ tr []
                    [ th [] [ text "Title" ]
                    , th [] [ text "Author" ]
                    ]
                ]
            , tbody [] (List.map bookRow books)
            ]
        ]

bookRow : Book -> Html Msg
bookRow book =
    tr []
        [ td []
            [ text book.title ]
        , td []
            [ text book.author ]
        ]
