defmodule EctoS3.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      S3UploadedObject.Repo
      # Starts a worker by calling: EctoS3.Worker.start_link(arg)
      # {EctoS3.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: EctoS3.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
