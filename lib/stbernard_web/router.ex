defmodule StbernardWeb.Router do
  use StbernardWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", StbernardWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/ac", PageController, :index_ac

    post "/charge", PageController, :charge
  end
end
