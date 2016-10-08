module Books.Update exposing (..)

import Utils
import Books.Messages exposing (Msg(..))
import Books.Models exposing (Book)
import Messages
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
            --( books, Navigation.newUrl ("#books/" ++ toString(id)))
            ( books, Utils.succeedCmd (Messages.UpdateLayout (BookPage book)) )
