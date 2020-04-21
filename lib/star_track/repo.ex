defmodule StarTrack.Repo do
  use Ecto.Repo,
    otp_app: :star_track,
    adapter: Ecto.Adapters.Postgres
end
