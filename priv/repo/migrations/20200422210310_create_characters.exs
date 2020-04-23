defmodule StarTrack.Repo.Migrations.CreateCharacters do
  use Ecto.Migration

  def change do
    create table(:characters) do
      add :name, :string
      add :biography, :text

      timestamps()
    end

  end
end
