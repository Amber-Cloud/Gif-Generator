defmodule GifGenWeb.PageController do
  use GifGenWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, params) do
    with theme <- Map.get(params, "gif", nil),
         false <- is_nil(theme),
         true <- String.trim(theme) != "",
         {:ok, image_url} <- GifGen.get_link(theme) do
      render(conn, "show.html", image_url: image_url)
    else
      _error ->

        conn
        |> put_flash(:error, "Please search a word or a phrase")
        |> redirect(to: Routes.page_path(conn, :index))
    end
  end
end