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
                        , img [ class "materialboxed", attribute "data-caption" "Kittens.  Cuz.", src "https://placekitten.com/749/801", attribute "width" "300" ] []
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
