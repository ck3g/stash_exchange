# StashExchange

[![Hex.pm](https://img.shields.io/hexpm/v/stash_exchange.svg?style=flat)](https://hex.pm/packages/stash_exchange)

The single value storage.

A demo projects. It was used as an example for the [Publishing Elixir packages to Hex.pm](http://whatdidilearn.info/2018/06/17/publishing-elixir-packages-to-hex.html) article.

## Installing

To use `StachExchange` in your Mix projects, first add it as a dependency:

```elixir
defp deps do
  [
    {:stash_exchange, "~> 0.1.0"}
  ]
end
```

Run `mix deps.get` to install it. That's it. Now it is ready to use.

## Using

Call

```elixir
StashExchange.exchange("your-value")
```

to retrieve a value and update the storage.

