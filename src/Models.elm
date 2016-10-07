module Models exposing (..)

import Layouts exposing (Layout(..))
import Books.Models exposing (Book)
import BookResources.Models exposing (BookResource)

type alias Model =
    { layout : Layout
    , books : List Book
    , bookResources : List BookResource
    }

initialModel : Model
initialModel =
    { layout = BookPage
    , books = []
    , bookResources = BookResources.Models.initialModel
    }
