defmodule UniversalDetector.BOM do
  @bom_utf8 "\\xef\\xbb\\xbf"
  @bom_utf16_le "\\xff\\xfe"
  @bom_utf16_be "\\xfe\\xff"
  @bom_utf32_le "\\xff\\xfe\\x00\\x00"
  @bom_utf_32_be "\\x00\\x00\\xfe\\xff"
end
