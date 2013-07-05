-module(demo).

-export([start/0]).

start() ->
    application:start(piqi),
    application:start(crypto),
    application:start(inets),
    application:start(mochiweb),
    application:start(webmachine),
    application:start(piqi_rpc),
    application:start(demo).
