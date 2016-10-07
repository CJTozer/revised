module Models exposing (..)

import Layouts exposing (Layout(..))
import Books.Models exposing (Book)
import BookResources.Models exposing (BookResource)
import Routing

type alias Model =
    { route : Routing.Route
    , books : List Book
    }

initialModel : Routing.Route -> Model
initialModel route =
    { route = route
    , books = []
    }
