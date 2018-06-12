# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :elixir_dgraph_example, ElixirDgraphExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "293RzwwIF0+xKs8t9jSv7NVMaPALNP8M3Lu5RElygHjERsXidAbCac+unuQFSI/T",
  render_errors: [view: ElixirDgraphExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirDgraphExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
