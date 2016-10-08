module Resources.Update exposing (..)

import Models exposing (Model)
import Messages
import Resources.Messages exposing (Msg(..))
import Resources.Models exposing (Resource)

update : Msg -> List Resource -> ( List Resource, Cmd Messages.Msg )
update message resources =
    case message of
        GetResource resourceId ->
            -- TEMP
            ( resources, Cmd.none )
        FetchDone newResource ->
            let
                _ = Debug.log "newResource" newResource
            in
                ( newResource :: resources, Cmd.none )

        FetchFail error ->
            ( resources, Cmd.none )

-- What resources are required to show the current view?
dataRetrieval : Model -> List (Cmd Messages.Msg)
dataRetrieval model =
    [ Cmd.none ]
