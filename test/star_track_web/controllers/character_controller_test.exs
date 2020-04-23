defmodule StarTrackWeb.CharacterControllerTest do
  use StarTrackWeb.ConnCase

  test "#index renders a list of characters" do
    conn = build_conn()
    character = insert(:character)

    conn = get conn, Routes.character_path(conn, :index)

    assert json_response(conn, 200) == %{
      "characters" => [%{
        "name" => character.name,
        "biography" => character.biography,
        "inserted_at" => NaiveDateTime.to_iso8601(character.inserted_at),
        "updated_at" => NaiveDateTime.to_iso8601(character.updated_at)
      }]
    }
  end
end
