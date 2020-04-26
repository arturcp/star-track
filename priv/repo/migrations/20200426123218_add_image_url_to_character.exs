defmodule StarTrack.Repo.Migrations.AddImageUrlToCharacter do
  use Ecto.Migration

  def change do
    alter table("characters") do
      add :image_url, :string
    end
  end
end
