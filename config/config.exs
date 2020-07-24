# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :workflow_demo,
  ecto_repos: [WorkflowDemo.Repo]

# Configures the endpoint
config :workflow_demo, WorkflowDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sjeuIjnjo44PrGGmM9QsiTMwPkMTmL7Re+sA618wmRG+FyWbj2s/tnU2TYB3q78d",
  render_errors: [view: WorkflowDemoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: WorkflowDemo.PubSub,
  live_view: [signing_salt: "ZiokmeIy"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
