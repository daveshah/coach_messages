use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :coach_messages, CoachMessagesWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :coach_messages, CoachMessages.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("PG_USER") || "postgres",
  password: System.get_env("PG_PASSWORD") || "postgres",
  database: "coach_messages_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
