defmodule Rumbl.Repo.Migrations.AddStatusToVideos do
  use Ecto.Migration

  def change do
    alter table(:videos) do
      add :status, :string, default: "Unwatched"
    end
  end
end
