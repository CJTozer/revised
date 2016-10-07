module Books.Update exposing (..)

import Books.Messages exposing (Msg(..))
import Books.Models exposing (Book)


update : Msg -> List Book -> ( List Book, Cmd Msg )
update message books =
    case message of
        FetchAllDone newBooks ->
            ( newBooks, Cmd.none )

        FetchAllFail error ->
            ( books, Cmd.none )
