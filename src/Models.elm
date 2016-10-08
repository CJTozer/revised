module Models exposing (..)

import Dict exposing (Dict)

import Layouts exposing (Layout(..))
import Books.Models exposing (Book)
import Resources.Models exposing (Resource)
import Routing

type alias Model =
    { route : Routing.Route
    , layout : Layout
    , books : List Book
    -- TODO - perhaps more sensible to store this as a Map?
    , resources : Dict Int Resource
    }

initialModel : Routing.Route -> Layout -> Model
initialModel route layout =
    { route = route
    , layout = layout
    , books = []
    , resources = Dict.empty
    }
