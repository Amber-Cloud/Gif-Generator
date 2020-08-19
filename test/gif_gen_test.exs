defmodule GifGenTest do
  use ExUnit.Case, async: true

  test "a valid theme request returns an image" do
    assert {:ok, _image_url} = GifGen.get_link("banana")
    assert {:error, :no_gif} = GifGen.get_link("hekkki djjjjjdhhf")
  end
end