defmodule GifGen.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      #GifGen.Repo,
      # Start the Telemetry supervisor
      GifGenWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: GifGen.PubSub},
      # Start the Endpoint (http/https)
      GifGenWeb.Endpoint
      # Start a worker by calling: GifGen.Worker.start_link(arg)
      # {GifGen.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: GifGen.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    GifGenWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
