defmodule UniversalDetector do
  import UniversalDetector.BOM

  @moduledoc """
  Detector helps to define encoding of the given data
  """

  @encoding_not_found "none"

  def feed() do
    @encoding_not_found
  end

  def feed(byte_str) do
    cond do
      is_utf8(byte_str) -> "utf8"
      is_utf16(byte_str) -> "utf16"
      is_utf32(byte_str) -> "utf32"
      true -> @encoding_not_found
    end
  end
end
