defmodule StarTrack.GameTest do
  use StarTrack.DataCase

  alias StarTrack.Game

  describe "characters" do
    alias StarTrack.Game.Character

    @valid_attrs %{biography: "some biography", name: "some name", image_url: "http://site.com/image.jpg"}
    @update_attrs %{biography: "some updated biography", name: "some updated name", image_url: "http://site.com/updated-image.jpg"}
    @invalid_attrs %{biography: nil, name: nil}

    def character_fixture(attrs \\ %{}) do
      {:ok, character} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Game.create_character()

      character
    end

    test "list_characters/0 returns all characters" do
      character = character_fixture()
      assert Game.list_characters() == [character]
    end

    test "get_character!/1 returns the character with given id" do
      character = character_fixture()
      assert Game.get_character!(character.id) == character
    end

    test "create_character/1 with valid data creates a character" do
      assert {:ok, %Character{} = character} = Game.create_character(@valid_attrs)
      assert character.biography == "some biography"
      assert character.name == "some name"
    end

    test "create_character/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Game.create_character(@invalid_attrs)
    end

    test "update_character/2 with valid data updates the character" do
      character = character_fixture()
      assert {:ok, %Character{} = character} = Game.update_character(character, @update_attrs)
      assert character.biography == "some updated biography"
      assert character.name == "some updated name"
    end

    test "update_character/2 with invalid data returns error changeset" do
      character = character_fixture()
      assert {:error, %Ecto.Changeset{}} = Game.update_character(character, @invalid_attrs)
      assert character == Game.get_character!(character.id)
    end

    test "delete_character/1 deletes the character" do
      character = character_fixture()
      assert {:ok, %Character{}} = Game.delete_character(character)
      assert_raise Ecto.NoResultsError, fn -> Game.get_character!(character.id) end
    end

    test "change_character/1 returns a character changeset" do
      character = character_fixture()
      assert %Ecto.Changeset{} = Game.change_character(character)
    end
  end
end
