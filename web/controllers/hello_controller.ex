defmodule HelloPhoenixApi.HelloController do
  use HelloPhoenixApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.json"
  end
end