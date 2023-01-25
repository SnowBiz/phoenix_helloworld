defmodule HelloPhoenixApi.Mixfile do
  use Mix.Project

  def project do
    [app: :hello_phoenix_api,
     version: "0.0.1",
     elixir: "~> 1.2",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {HelloPhoenixApi, []},
     applications: [:phoenix, :phoenix_pubsub, :phoenix_html, :cowboy, :logger, :gettext]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [{:phoenix, "~> 1.7-rc"},
     {:phoenix_pubsub, "~> 2.0"},
     {:phoenix_html, "~> 3.0"},
     {:phoenix_live_reload, "~> 1.0", only: :dev},
     {:gettext, "~> 0.11"},
     {:poison, ">= 0.0.0"},
     {:phoenix_view, "~> 2.0"},
     {:plug_cowboy, "~> 2.0"},
     {:plug, "~> 1.7"},
     {:jason, "~> 1.0"},
     ]
  end
end
