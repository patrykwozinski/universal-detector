defmodule UniversalDetector do
  alias UniversalDetector.BOM

  @moduledoc """
  Detector helps to define encoding of the given data
  """

  @encoding_not_found "none"

  def feed() do
    @encoding_not_found
  end

  def feed(byte_str) do
    cond do
      BOM.is_utf8(byte_str) -> "utf8"
      BOM.is_utf16(byte_str) -> "utf16"
      BOM.is_utf32(byte_str) -> "utf32"
    end
  end
end
