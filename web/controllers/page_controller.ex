defmodule HelloPhoenixApi.PageController do
  use HelloPhoenixApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
