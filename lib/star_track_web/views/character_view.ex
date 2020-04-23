defmodule StarTrackWeb.CharacterView do
  use StarTrackWeb, :view

  def render("index.json", %{characters: characters}) do
    %{
      characters: Enum.map(characters, fn(character) -> character_json(character) end)
    }
  end

  def character_json(character) do
    %{
      name: character.name,
      biography: character.biography,
      inserted_at: character.inserted_at,
      updated_at: character.updated_at
    }
  end
end
