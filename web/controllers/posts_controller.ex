defmodule HelloPhoenix.PostsController do
  use HelloPhoenix.Web, :controller

  def show(conn, %{"id" => id}) do
    json conn, %{id: id}
  end
end
