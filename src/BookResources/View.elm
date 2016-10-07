module BookResources.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)

import BookResources.Models exposing (BookResource)
import Messages exposing (Msg)


resourcesList : List BookResource -> Html Msg
resourcesList resources =
    let
        resourceRow : BookResource -> Html Msg
        resourceRow resource =
            tr []
                [ td []
                    [ text ( toString resource.chapter ) ]
                , td []
                    [ text resource.text ]
                ]
        sortedResources : List BookResource
        sortedResources = List.sortBy .order resources
    in
        div []
            [ table [ class "bordered highlight" ]
                [ thead []
                    [ tr []
                        [ th [] [ text "Chapter" ]
                        , th [] [ text "Info" ]
                        ]
                    ]
                , tbody []
                    ( List.map resourceRow sortedResources )
                ]
            ]
