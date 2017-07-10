# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mixx,
  ecto_repos: [Mixx.Repo]

# Configures the endpoint
config :mixx, Mixx.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4rZfbHq3B45b3D5r1Mv1CqatuRMCh/kgpez63WX/vHCWvMk6sywnyj9Z1WlSqdnX",
  render_errors: [view: Mixx.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mixx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
