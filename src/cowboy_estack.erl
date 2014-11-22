-module(cowboy_estack).

-export([init/1]).
-export([execute/3]).

init(Stack) ->
  {cowboy_estack, fun (Req, Env) ->
    estack:execute(Req, Env, Stack)
  end}.

execute(Req, Env, {?MODULE, Fun}) ->
  Fun(Req, Env).
