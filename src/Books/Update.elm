module Books.Update exposing (..)

import Books.Messages exposing (Msg(..))
import Books.Models exposing (Book)

import Navigation


update : Msg -> List Book -> ( List Book, Cmd Msg )
update message books =
    case message of
        FetchAllDone newBooks ->
            ( newBooks, Cmd.none )

        FetchAllFail error ->
            ( books, Cmd.none )

        ShowBook -> -- id
            ( books, Navigation.newUrl "#books/123")

        ResourceMsg _ ->
            ( books, Cmd.none )
