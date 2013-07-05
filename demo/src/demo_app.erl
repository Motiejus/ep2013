-module(demo_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    Defn1 = {person_rpc_piqi_impl, person_rpc_piqi_rpc, "person", []},
    ok = piqi_rpc:add_service(Defn1),
    demo_sup:start_link().

stop(_State) ->
    ok.
