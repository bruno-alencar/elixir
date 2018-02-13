defmodule Strain do
  @doc """
  Given a `list` of items and a function `fun`, return the list of items where
  `fun` returns true.

  Do not use `Enum.filter`.
  """
  @spec keep(list :: list(any), fun :: ((any) -> boolean)) :: list(any)
  def keep(list, fun) do
    # do_validation(list, fun, true)
    Enum.filter(list, fun)
  end

  @doc """
  Given a `list` of items and a function `fun`, return the list of items where
  `fun` returns false.

  Do not use `Enum.reject`.
  """
  @spec discard(list :: list(any), fun :: ((any) -> boolean)) :: list(any)
  def discard(list, fun) do
    # do_validation(list, fun, false)
    Enum.reject(list, fun)
  end

  # defp do_validation(list, fun, conditional) do
      # list
      # |> Enum.map(fn(item) ->
      #       if fun.(item) == conditional do item end
      #   end)
      # |> Enum.filter(fn(x) -> x != nil end)
  # end
end
