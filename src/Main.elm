module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : ( Model, Cmd Msg )
init =
    ( Model "My Title", Cmd.none )


type alias Model =
    { title : String }


type Msg
    = ChangeTitle String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ChangeTitle newTitle ->
            ( { model | title = newTitle }, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


view : Model -> Html Msg
view model =
    div [ onClick (ChangeTitle "New Title!!!") ] [ text model.title ]
