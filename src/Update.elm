module Update exposing (..)

import Models exposing (Model)
import Messages exposing (Msg(..))
import Books.Update
import Resources.Update

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    let
        ( newModel, msgCmd ) =
            handleMessage msg model
        moreCmds = dataRetrieval model
        allCmds = msgCmd :: moreCmds
    in
        ( newModel, Cmd.batch allCmds )


handleMessage : Msg -> Model -> ( Model, Cmd Msg )
handleMessage msg model =
    case msg of
        BooksMsg subMsg ->
            let
                ( updatedBooks, cmd ) =
                    Books.Update.update subMsg model.books
            in
                ( { model | books = updatedBooks }, Cmd.map BooksMsg cmd )
        ResourcesMsg subMsg ->
            let
                ( updatedResources, cmd ) =
                    Resources.Update.update subMsg model.resources
            in
                ( { model | resources = updatedResources }, Cmd.map ResourcesMsg cmd )

dataRetrieval : Model -> ( List (Cmd Msg) )
dataRetrieval model =
    []
