module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


type alias Model =
    { text : String
    }


type Msg
    = ReplaceThisMsg


init : () -> ( Model, Cmd Msg )
init _ =
    ( { text = "Hello World." }, Cmd.none )


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , subscriptions = subscriptions
        , view = view
        , update = update
        }


view : Model -> Html Msg
view model =
    div [] [ text model.text ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ReplaceThisMsg ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
