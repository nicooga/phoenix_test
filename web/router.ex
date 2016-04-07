defmodule HelloPhoenix.Router do
  use HelloPhoenix.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", HelloPhoenix do
    pipe_through :api
    resources "/posts", PostsController, only: [:show]
  end
end
