defmodule GifGen do

#  def generate(theme) do
#    with {:ok, image_url} <- get_link(theme),
#         {:ok, binary} <- get_image(image_url) do
#      {:ok, binary}
#    else
#      error -> error
#    end
#  end

  def get_link(theme) do
    case GiphyEx.Gifs.random(theme) do
      %{"data" => %{"image_url" => image_url}} -> {:ok, image_url}
      _ -> {:error, :no_gif}
    end
  end

#  defp get_image(image_url) do
#    case HTTPoison.get(image_url) do
#      {:ok, %HTTPoison.Response{body: binary}} -> {:ok, binary}
#      {:error, %HTTPoison.Error{reason: reason}} -> {:error, reason}
#    end
#  end
end
