module Main exposing (..)

import Html.App

import Messages exposing (Msg(..))
import Models exposing (Model, initialModel)
import View exposing (view)
import Update exposing (update)
import Books.Commands exposing (fetchAll)


-- MAIN
main : Program Never
main =
    Html.App.program
        { init = ( initialModel, Cmd.map BooksMsg fetchAll )
        , view = view
        , update = update
        , subscriptions = always Sub.none
        }
