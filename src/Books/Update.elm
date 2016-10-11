module Books.Update exposing (..)

import Utils
import Messages
import Books.Messages exposing (Msg(..))
import Books.Models exposing (Book)
import Layouts exposing (Layout(BookPage))
import Navigation


update : Msg -> List Book -> ( List Book, Cmd Messages.Msg )
update message books =
    case message of
        FetchAllDone newBooks ->
            ( newBooks, Cmd.none )

        FetchAllFail error ->
            ( books, Cmd.none )

        ShowBook book ->
            let
                cmds =
                    Cmd.batch
                        [ Navigation.newUrl ("#books/" ++ toString (book.book_id))
                        , Utils.succeedCmd (Messages.UpdateLayout (BookPage book))
                        ]
            in
                ( books, cmds )
