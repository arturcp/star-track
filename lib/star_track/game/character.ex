defmodule StarTrack.Game.Character do
  use Ecto.Schema
  import Ecto.Changeset

  schema "characters" do
    field :biography, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(character, attrs) do
    character
    |> cast(attrs, [:name, :biography])
    |> validate_required([:name, :biography])
  end
end
