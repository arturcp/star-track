use Mix.Config

# Configure your database
config :star_track, StarTrack.Repo,
  username: "postgres",
  password: "postgres",
  database: "star_track_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :star_track, StarTrackWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

import_config "dev.secret.exs"
