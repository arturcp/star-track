defmodule StarTrackWeb.PageController do
  use StarTrackWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
