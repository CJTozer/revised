module Resources.View exposing (..)

import Dict exposing (Dict)

import Html exposing (..)
import Html.Attributes exposing (class, colspan)

import Resources.Models exposing (Resource)
import Resources.Messages exposing (Msg)

import Styles

-- TODO - show 'available' and 'loading' resources differently...
resourcesList : Dict Int Resource -> List Int -> Html Msg
resourcesList allResources resourceIds =
    let
        resourceRow : Int -> Html Msg
        resourceRow resourceId = case Dict.get resourceId allResources of
            Just res ->
                tr [ Styles.clickable ]
                    [ td []
                        [ text res.text ]
                    , td []
                        [ text res.resource_type ]
                    ]
            Nothing ->
                tr []
                    [ td [ colspan 2 ]
                        [ div [ class "progress blue" ]
                            [ div [ class "indeterminate blue lighten-3" ] []
                            ]
                        ]
                    ]
        sortedResources : List Int
        sortedResources = Debug.log "Resources" (List.sort resourceIds)
    in
        div []
            [ table [ class "bordered highlight" ]
                [ thead []
                    [ tr []
                        [ th [] [ text "Resource Text" ]
                        , th [] [ text "Resource Type" ]
                        ]
                    ]
                , tbody []
                    ( List.map resourceRow sortedResources )
                ]
            ]

