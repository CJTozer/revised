module Messages exposing (..)

import Books.Messages
import Resources.Messages

type Msg
    = BooksMsg Books.Messages.Msg
    | ResourcesMsg Resources.Messages.Msg
