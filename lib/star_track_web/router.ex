defmodule StarTrackWeb.Router do
  use StarTrackWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
    resources "/characters", StarTrackWeb.CharacterController, only: [:index]
  end

  scope "/", StarTrackWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", StarTrackWeb do
  #   pipe_through :api
  # end
end
