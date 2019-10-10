module Main exposing (main)

import Browser exposing (Document)
import Html exposing (Html, input, div)
import Html.Attributes exposing (class, placeholder, value, type_)
import Html.Events exposing (onInput)

type alias Flags =
    { name : String
    }

type alias Model =
    { name : String }

type Msg
    = NoOp

init : Model -> (Model, Cmd Msg)
init =
    let 
        _ = Debug.log "Wasss"
    in
    (Model "888", Cmd.none)

viewInput : String -> String -> String -> (String -> msg) -> Html msg
viewInput t p v toMsg =
  input [ type_ t, placeholder p, value v, onInput toMsg ] []
  

update : Model -> (Model, Cmd Msg)
update msg model =
    case msg of
         name ->
            {model | name = name}

view : Model -> Document Msg
view model =
    div [ class "container" ] 
    [ div [ class "row" ] 
        [ div [ class "col-md-6" ]
            [viewInput "text" "Name" model.name]
        ]
    ]

main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }
