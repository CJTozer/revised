module View exposing (..)

import Html exposing (..)
import Html.App
import Html.Attributes exposing (class, attribute, src)

import Models exposing (Model)
import Messages exposing (..)
import Layouts exposing (Layout(..))

import Books.View exposing (bookList, bookHeader)
import Resources.View exposing (resourcesList)
import Components.Header exposing (pageHeader)
import Components.Footer exposing (pageFooter)


view : Model -> Html Msg
view model =
    case model.layout of
        FrontPage ->
            body []
                [ pageHeader
                , main' [] [ Html.App.map BooksMsg (bookList model.books) ]
                , pageFooter
                ]
        BookPage book ->
            body []
                [ pageHeader
                , main' []
                    [ div [ class "container" ]
                        [ Html.App.map BooksMsg (bookHeader book)
                        , Html.App.map ResourcesMsg (resourcesList model.resources (Maybe.withDefault [] book.resources))
                        , img [ class "materialboxed", attribute "data-caption" "A picture of some deer and tons of trees", src "http://th01.deviantart.net/fs70/PRE/i/2013/126/1/e/nature_portrait_by_pw_fotografie-d63tx0n.jpg", attribute "width" "250" ] []
                        ]
                    ]
                , pageFooter
                ]
        --NotFoundRoute ->
        --    div []
        --        [ pageHeader
        --        , main' [] [ text "PAGE NOT FOUND" ]
        --        , pageFooter
        --        ]
