# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :algapay,
  ecto_repos: [Algapay.Repo]

# Configures the endpoint
config :algapay, AlgapayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fLn1HTdWUY01UqIwufPR+qEmvudcG1mt6e7Yv/P0s+F7rF2AKYvYhWCFLEQZhfpu",
  render_errors: [view: AlgapayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Algapay.PubSub,
  live_view: [signing_salt: "rj6r2hXy"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
