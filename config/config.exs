# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :stbernard, StbernardWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "isiKv/egvCcaSsZfEPolrmlPlVOpghWk+wUXBeoz1kOBIq9nO4yXJtHorFNfT7pI",
  render_errors: [view: StbernardWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Stbernard.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :hound, driver: "selenium"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
