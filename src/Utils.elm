module Utils exposing (..)

import Task

succeedCmd : a -> Cmd a
succeedCmd x =
    Task.perform (always x) (always x) (Task.succeed ())
