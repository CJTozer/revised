module Resources.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)

import Resources.Models exposing (Resource)
import Resources.Messages exposing (Msg)

import Styles

-- TODO - show 'available' and 'loading' resources differently...
resourcesList : List Resource -> List Int -> Html Msg
resourcesList allResources resourceIds =
    let
        resourceRow : Int -> Html Msg
        resourceRow resourceId =
            tr [ Styles.clickable ]
                [ td []
                    [ text "...Resource..." ]
                , td []
                    [ text (toString resourceId) ]
                ]
        sortedResources : List Int
        sortedResources = Debug.log "Resources" (List.sort resourceIds)
    in
        div []
            [ table [ class "bordered highlight" ]
                [ thead []
                    [ tr []
                        [ th [] [ text "Col1" ]
                        , th [] [ text "Col2" ]
                        ]
                    ]
                , tbody []
                    ( List.map resourceRow sortedResources )
                ]
            ]

