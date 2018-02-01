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
      index = Enum.find_index([?a..?z], fn(x) -> x = text end)
      Enum.find([?a..?z], nil, fn(x) -> x = shift end)
  end
end

