module Main exposing (..)

import Html.App

import Navigation
import Messages exposing (Msg(..))
import Models exposing (Model, initialModel)
import View exposing (view)
import Update exposing (update)
import Books.Commands exposing (fetchAll)
import Routing exposing (Route(..))
import Layouts exposing (Layout(..))


init : Result String Route -> ( Model, Cmd Msg )
init result =
    let
        currentRoute =
            Routing.routeFromResult result
        --TODO - calculate this properly...
        currentLayout =
            FrontPage
    in
        ( initialModel currentRoute currentLayout, Cmd.map BooksMsg fetchAll )


urlUpdate : Result String Route -> Model -> ( Model, Cmd Msg )
urlUpdate result model =
    let
        currentRoute =
            Routing.routeFromResult result
        currentLayout = layoutFromRoute currentRoute model
    in
        ( { model
            | route = currentRoute
            , layout = currentLayout
            }, Cmd.none )

layoutFromRoute : Route -> Model -> Layout
layoutFromRoute route model =
    case route of
        BooksRoute ->
            FrontPage
        _ ->
            -- Handled elswhere, one hopes!
            model.layout

-- MAIN
main : Program Never
main =
    Navigation.program Routing.parser
        { init = init
        , view = view
        , update = update
        , urlUpdate = urlUpdate
        , subscriptions = always Sub.none
        }
