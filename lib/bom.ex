defmodule UniversalDetector.BOM do
  import String

  @bom_utf8 "\\xef\\xbb\\xbf"
  @bom_utf16_le "\\xff\\xfe"
  @bom_utf16_be "\\xfe\\xff"
  @bom_utf32_le "\\xff\\xfe\\x00\\x00"
  @bom_utf32_be "\\x00\\x00\\xfe\\xff"

  def is_utf8(string) do
    string |> starts_with?(@bom_utf8)
  end

  def is_utf16(string) do
    string |> starts_with?(@bom_utf16_le) or string |> starts_with?(@bom_utf16_be)
  end

  def is_utf32(string) do
    string |> starts_with?(@bom_utf32_le) or string |> starts_with?(@bom_utf32_be)
  end
end
