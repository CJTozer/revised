module Resources.Update exposing (..)

import Models exposing (Model)
import Layouts exposing (Layout(..))
import Messages
import Resources.Commands exposing (fetchOneResource)
import Resources.Messages exposing (Msg(..))
import Resources.Models exposing (Resource)

update : Msg -> List Resource -> ( List Resource, Cmd Messages.Msg )
update message resources =
    case message of
        GetResource resourceId ->
            -- TEMP
            ( resources, Cmd.none )
        FetchDone newResource ->
            -- TODO - maintain a maximum number (i.e. age out old resource data?)
            let
                _ = Debug.log "newResource" newResource
            in
                ( newResource :: resources, Cmd.none )

        FetchFail error ->
            ( resources, Cmd.none )

-- What resources are required to show the current view?
-- TODO - currently causes multiple fetches for the same Resource
dataRetrieval : Model -> List (Cmd Messages.Msg)
dataRetrieval model =
    let
        cmds = case model.layout of
            BookPage book ->
                -- Need all resources for this book - work out which we don't
                -- have already.
                let
                    gotResources = List.map .resource_id model.resources
                    bookResources = Maybe.withDefault [] book.resources
                    _ = Debug.log "Got Resources: " gotResources
                    missingResources = List.filter (\resId ->
                        not (List.member resId gotResources)
                        ) bookResources
                    _ = Debug.log "Missing Resources: " missingResources
                in
                    List.map (\resId ->
                        Cmd.map Messages.ResourcesMsg (fetchOneResource resId)
                        ) missingResources
            _ ->
                -- Need nothing when not looking at a book page
                []
    in
        cmds

