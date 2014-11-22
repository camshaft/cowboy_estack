cowboy_estack
=============

estack middleware for cowboy

Usage
-----

```erlang

Middlewares = [
  my_middleware_module,
  fun my_middleware:handle/2,
  my_middleware:init(#{volume => 11}),
  fun (Req, Env) ->
    ...
    {ok, Req, Env}
  end
],

{ok, _} = cowboy:start_http(http, 100, [{port, 8080}], [
  {middlewares, [
    cowboy_estack:init(Middlewares)
  ]}
]).
```
