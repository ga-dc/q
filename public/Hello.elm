module App exposing(..)

import Html exposing (..)
import Html.Events exposing (onInput)
import Html.Attributes exposing (..)
import Html.App

type alias Model = 
  String

init : (Model, Cmd Msg )
init = 
  ("", Cmd.none)

type Msg
  = Name String

--view : Model -> Html Msg
view model = 
    div []
      [
        input [type' "text", placeholder "Name", onInput Name] [],
        div [] [text model]
      ]


update : Msg -> Model -> (Model, Cmd Msg)
update msg model = 
  case msg of
    Name name ->
      (name, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions model = 
  Sub.none 

main = 
  Html.App.program{
    init = init,
    view = view,
    update = update,
    subscriptions = subscriptions
  }