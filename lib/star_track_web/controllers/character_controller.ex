defmodule StarTrackWeb.CharacterController do
  use StarTrackWeb, :controller

  alias StarTrack.Game

  def index(conn, _params) do
    characters = Game.list_characters()
    render(conn, "index.json", characters: characters)
  end
end
