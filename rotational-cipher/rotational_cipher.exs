defmodule RotationalCipher do
  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
      # Enum.map(number, fn{x, v} -> x = text end) 
      # index = [?a..?z]
      # |> Enum.find_index(fn(x) -> x = "z" end)
      # |> Enum.at([?a..?z])
      # |> to_string
      # [?a..?z]
      # |> Enum.at(0)
      # |> to_string
      # [?a..?z]
      # |> Enum.at()
      
      # Enum.find([?a..?z], nil, fn(x) -> x = shift end)
     text
    |> String.to_charlist
    |> Enum.map(fn(char) ->
      cond do
        char in ?a..?z -> ?a + rem(char - ?a + shift, 26)
        char in ?A..?Z -> ?A + rem(char - ?A + shift, 26)
        true -> char
      end
    end)
    |> to_string
  end
end

