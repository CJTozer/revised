module Models exposing (..)

import Layouts exposing (Layout(..))
import Books.Models exposing (Book)
import Resources.Models exposing (Resource)
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
