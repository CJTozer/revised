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

        ShowBook book ->
            --( books, Navigation.newUrl ("#books/" ++ toString(id)))
            ( books, Cmd.none )

        Ignore msg ->
            let
                _ = Debug.log "Books/Update.elm - UNHANDLED MESSAGE" msg
            in
                ( books, Cmd.none )
