defmodule UniversalDetector do
  @moduledoc """
  Detector helps to define encoding of the given data
  """

  @encoding_not_found "none"

  def feed() do
    @encoding_not_found
  end

  def feed(byte_str) do
    byte_str
    |> String.starts_with?()
  end
end
