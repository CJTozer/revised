module Messages exposing (..)

import Books.Messages
import Resources.Messages
import Layouts

type Msg
    = BooksMsg Books.Messages.Msg
    | ResourcesMsg Resources.Messages.Msg
    | UpdateLayout (Layouts.Layout)
