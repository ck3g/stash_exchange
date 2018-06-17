defmodule StashExchange do
  @moduledoc """
  Implements a single value storage
  """

  @initial_state 1
  @stash_name __MODULE__

  @doc """
  Retrieves a value from the storage and updates the storage with the provided new value

  ## Examples

      iex> StashExchange.exchange(503)
      1

      iex> StashExchange.exchange("the value")
      iex> StashExchange.exchange(1)
      "the value"

  """
  def exchange(value) do
    if is_nil(Process.whereis(@stash_name)) do
      Agent.start(fn -> @initial_state end, name: @stash_name)
    end

    Agent.get_and_update(@stash_name, fn state -> {state, value} end)
  end
end
