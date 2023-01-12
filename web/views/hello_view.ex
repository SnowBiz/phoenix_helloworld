defmodule HelloPhoenixApi.HelloView do
  use HelloPhoenixApi.Web, :view

  def render("index.json", %{}) do
    %{hello: "world"}
  end
end