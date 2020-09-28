defmodule UniversalDetector.BOM do
  @BOM_UTF8 b'\xef\xbb\xbf'

  @bom_utf16_le b'\xff\xfe'

  @bom_utf16_be b'\xfe\xff'

  @bom_utf32_le b'\xff\xfe\x00\x00'

  @bom_utf_32_be b'\x00\x00\xfe\xff'
end
