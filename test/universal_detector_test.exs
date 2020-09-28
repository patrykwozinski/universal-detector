defmodule UniversalDetectorTest do
  use ExUnit.Case

  test "not detected when empty" do
    assert UniversalDetector.feed() == "none"
  end

  test "step next" do
    res = File.read!("test/fixtures/utf8.csv")

    UniversalDetector.feed(res)
  end
end
