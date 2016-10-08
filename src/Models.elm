module Models exposing (..)

import Layouts exposing (Layout(..))
import Books.Models exposing (Book)
import Resources.Models exposing (Resource)
import Routing

type alias Model =
    { route : Routing.Route
    , layout : Layout
    , books : List Book
    , resources : List Resource
    }

initialModel : Routing.Route -> Layout -> Model
initialModel route layout =
    { route = route
    , layout = layout
    , books = []
    , resources = []
    }
