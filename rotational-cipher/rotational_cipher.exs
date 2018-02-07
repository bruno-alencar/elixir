defmodule RotationalCipher do
  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """

  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
      array = for n <- ?a..?z, do: << n :: utf8 >>

      index = Enum.find_index(array, fn(x) -> x == text end)

      # if def(index+shift > 26 do  
      Enum.at(array, index+shift)
  end
end

