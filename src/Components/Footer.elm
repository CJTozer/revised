module Components.Footer exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, href)

import Messages exposing (Msg)


pageFooter : Html Msg
pageFooter =
    -- http://materializecss.com/footer.html
    footer [ class "page-footer teal lighten-3" ]
        [ div [ class "container" ]
            [ div [ class "row" ]
                [ div [ class "col s12 right-align" ]
                    [ a [ href "https://github.com/CJTozer/revised" ] [ text "Contributions always welcome!" ] ]
                ]
            ]
        , div [ class "footer-copyright" ]
            [ div [ class "container "]
                [ text "© 2016 C J Tozer" ]
            ]
        ]
