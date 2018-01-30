defmodule SecretHandshake do
  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
@binaries [
    {1, "wink"},
    {10, "double blink"},
    {100, "close your eyes"},
    {1000, "jump"},
  ]

@mapBinaries %{ 1 => "wink", 10 => "double blink", 100 => "close your eyes", 1000 => "jump"}

  def get_item (code) do
    code
    |> Integer.to_string(2)
    |> String.to_integer
  end

  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do

    bits = get_item(code)

    # bits = Integer.digits(code, 2)

    # Enum.map(bits, fn(n) -> n = 1 end)
    # |> Enum.map(fn(n))
    [Map.get(@mapBinaries, bits)]

    # |> Enum.map(@mapBinaries, fn{key, value} -> key == &1 end)

    # |> Enum.into([])
  end
end

