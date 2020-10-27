# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :master_client_nodes_liveview,
  ecto_repos: [MasterClientNodesLiveview.Repo]

# Configures the endpoint
config :master_client_nodes_liveview, MasterClientNodesLiveviewWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0EZOwieztIbTbY9GHTNJoZqBl/lvzzurp/ji6pydZUkC/yxb1eV+tt58EBX5vdAm",
  render_errors: [view: MasterClientNodesLiveviewWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: MasterClientNodesLiveview.PubSub,
  live_view: [signing_salt: "1lMWGAzX"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
