defmodule UniversalDetectorTest do
  use ExUnit.Case

  test "not detected when empty" do
    assert UniversalDetector.feed() == "none"
  end

  test "utf8 detected" do
    res = File.read!("test/fixtures/utf8.csv")

    assert UniversalDetector.feed(res) == "utf8"
  end
end
