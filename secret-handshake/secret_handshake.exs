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
    {"wink", 1},
    {"double blink", 2},
    {"close your eyes", 4},
    {"jump", 8},
  ]

  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
    cond do 
      code == 1 -> ["wink"] 
      code == 2 -> ["double blink"]
      code == 4 -> ["close your eyes"]
      code == 4 -> ["jump"]
    end
  end
end

