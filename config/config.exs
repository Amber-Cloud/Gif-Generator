# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :gif_gen, GifGenWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KxOH/0ONB4fCcvB8Y/UQCCrouLGW4vXHaMa0qF457NsmmaweXS59xppw8QXF+ISR",
  render_errors: [view: GifGenWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: GifGen.PubSub,
  live_view: [signing_salt: "66p1TaUC"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :giphy_ex, :api_key, System.get_env("GIPHY_API_KEY")

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
