%%%-------------------------------------------------------------------
%% @doc conflicting_erlydtl public API
%% @end
%%%-------------------------------------------------------------------

-module(conflicting_erlydtl_app).

-behaviour(application).

%% Application callbacks
-export([start/2
        ,stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    conflicting_erlydtl_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
