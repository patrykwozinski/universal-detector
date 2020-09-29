defmodule UniversalDetector.BOM do
  @utf8 <<0xEF, 0xBB, 0xBF>>
  @utf16_le <<0xFF, 0xFE>>
  @utf16_be <<0xFE, 0xFF>>
  @utf32_le <<0xFF, 0xFE, 0x00, 0x00>>
  @utf32_be <<0x00, 0x00, 0xFE, 0xFF>>

  @x_iso_10646_ucs_4_3412 <<0xFE, 0xFF, 0x00, 0x00>>

  def is_utf8(string) do
    string |> get_n_bytes(1) == @utf8
  end

  def is_utf16(string) do
    unicode = string |> get_n_bytes(2)

    is_le = unicode !== @utf32_le and unicode == @utf16_le
    is_be = unicode !== @x_iso_10646_ucs_4_3412 and unicode == @utf16_be

    is_le or is_be
  end

  def is_utf32(string) do
    unicode = string |> String.first()

    unicode == @utf32_le or unicode == @utf32_be
  end

  defp get_n_bytes(string, n) do
    string
      |> String.graphemes()
      |> Enum.take(n)
      |> Enum.join()
  end
end
