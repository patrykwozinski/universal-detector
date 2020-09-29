defmodule UniversalDetectorTest do
  use ExUnit.Case

  test "not detected when empty" do
    assert UniversalDetector.feed() == "none"
  end

  test "utf8 detected" do
    res = load_fixture("utf8.csv")

    assert UniversalDetector.feed(res) == "utf8"
  end

  test "utf16 detected" do
    res = load_fixture("utf16.csv")

    assert UniversalDetector.feed(res) == "utf16"
  end

  test "utf32 detected" do
    res = load_fixture("utf32.csv")

    assert UniversalDetector.feed(res) == "utf32"
  end

  test "unknown" do
    res = load_fixture("unknown.csv")

    UniversalDetector.feed(res) |> IO.inspect()
  end

  defp load_fixture(name) do
    File.read!("test/fixtures/" <> name)
  end
end
