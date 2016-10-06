module Update exposing (..)

import Models exposing (Model)
import Messages exposing (Msg(..))
import Books.Update

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        BooksMsg subMsg ->
            let
                ( updatedBooks, cmd ) =
                    Books.Update.update subMsg model.books
            in
                ( { model | books = updatedBooks }, Cmd.map BooksMsg cmd )

