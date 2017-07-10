defmodule Mixx.PageController do
  use Mixx.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
