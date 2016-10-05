module Components.Header exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, href, id)

import Messages exposing (Msg)


pageHeader : Html Msg
pageHeader =
    -- http://materializecss.com/navbar.html
    header []
        [ nav [ class "top-nav teal lighten-2" ]
            [ div [ class "container" ]
                [ div [ class "nav-wrapper" ]
                    [ a [ href "#", class "brand-logo" ]
                        [ text "reVISed" ]
                    , ul [ id "nav-mobile", class "right hide-on-med-and-down" ]
                        [ li [] [ a [ href "https://github.com/CJTozer/revised/issues" ] [ text "Issues" ] ]
                        , li [] [ a [ href "https://github.com/CJTozer/revised#readme" ] [ text "About" ] ]
                        ]
                    ]
                ]
            ]
        ]
