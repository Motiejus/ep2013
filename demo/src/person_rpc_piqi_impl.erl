-module(person_rpc_piqi_default_impl).
-compile(export_all).

-include("person_rpc_piqi_impl.hrl").

get(#person_rpc_get_input{}) ->
    {ok, person_rpc_piqi:default_get_output()}.
