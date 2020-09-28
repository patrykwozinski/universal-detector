defmodule UniversalDetectorTest do
  use ExUnit.Case

  test "result is none when not detected" do
    assert UniversalDetector.feed() == "none"
  end
end
