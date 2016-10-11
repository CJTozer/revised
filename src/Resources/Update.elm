module Resources.Update exposing (..)

import Dict exposing (Dict)
import Models exposing (Model)
import Layouts exposing (Layout(..))
import Messages
import Resources.Commands exposing (fetchOneResource)
import Resources.Messages exposing (Msg(..))
import Resources.Models exposing (Resource)


update : Msg -> Dict Int Resource -> ( Dict Int Resource, Cmd Messages.Msg )
update message resources =
    case message of
        FetchDone newResource ->
            -- TODO - maintain a maximum number (i.e. age out old resource data?)
            let
                _ =
                    Debug.log "newResource" newResource

                newResources =
                    Dict.insert newResource.resource_id newResource resources
            in
                ( newResources, Cmd.none )

        FetchFail error ->
            ( resources, Cmd.none )



-- What resources are required to show the current view?
-- TODO - currently causes multiple fetches for the same Resource


dataRetrieval : Model -> List (Cmd Messages.Msg)
dataRetrieval model =
    case model.layout of
        BookPage book ->
            -- Need all resources for this book - work out which we don't
            -- have already.
            let
                _ =
                    Debug.log "Got Resources: " (Dict.keys model.resources)

                neededResources =
                    Maybe.withDefault [] book.resources

                _ =
                    Debug.log "Need Resources: " neededResources

                missingResources =
                    List.filter
                        (\resId ->
                            not (Dict.member resId model.resources)
                        )
                        neededResources

                _ =
                    Debug.log "Missing Resources: " missingResources
            in
                List.map
                    (\resId ->
                        Cmd.map Messages.ResourcesMsg (fetchOneResource resId)
                    )
                    missingResources

        _ ->
            -- Need nothing when not looking at a book page
            []
