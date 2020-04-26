defmodule StarTrack.Game.Character do
  use Ecto.Schema
  import Ecto.Changeset

  schema "characters" do
    field :biography, :string
    field :name, :string
    field :image_url, :string

    timestamps()
  end

  @doc false
  def changeset(character, attrs) do
    character
    |> cast(attrs, [:name, :biography, :image_url])
    |> validate_required([:name, :biography, :image_url])
  end
end
