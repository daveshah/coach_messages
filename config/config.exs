# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :coach_messages,
  ecto_repos: [CoachMessages.Repo]

# Configures the endpoint
config :coach_messages, CoachMessagesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KQ7V85WjLphJ3T1ZvjF83k9Ddo1zwJu0IKcVk5wkax1zFXuwqFhfRkzZj3RFsDr6",
  render_errors: [view: CoachMessagesWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CoachMessages.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
