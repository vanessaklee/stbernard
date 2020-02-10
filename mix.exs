defmodule Stbernard.MixProject do
  use Mix.Project

  def project do
    [
      app: :stbernard,
      version: "0.1.0",
      elixir: "~> 1.5",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {Stbernard.Application, []},
      extra_applications: [:logger, :runtime_tools],
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.4"},
      {:phoenix_pubsub, "~> 1.1"},
      {:phoenix_ecto, "~> 4.0"},
      {:ecto_sql, "~> 3.1"},
      {:postgrex, ">= 0.0.0"},
      {:phoenix_html, "~> 2.13.3"},
      {:phoenix_live_reload, "~> 1.2", only: :dev},
      {:gettext, "~> 0.11"},
      {:jason, "~> 1.0"},
      {:plug_cowboy, "~> 2.0"},
      {:phoenix_live_view, "~> 0.5.1"},
      {:credo, "~> 1.1.0", only: [:dev, :test], runtime: false},
      {:dialyxir, ">= 0.0.0", only: :dev, runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:sobelow, ">= 0.0.0", only: :dev, runtime: false},
      {:excoveralls, "~> 0.9.2", only: :test},
      {:floki, ">= 0.0.0", only: :test},
      {:httpoison, "~> 1.6"},
      {:stream_data, "~> 0.1", only: [:dev, :test]},
      {:benchee, "~> 1.0", only: [:test, :dev]},
      {:benchee_html, "~> 1.0", only: [:test, :dev]},
      {:benchee_markdown, "~> 0.1", only: [:test, :dev]},
      {:ex_unit_notifier, "~> 0.1", only: :test},
      {:ex_check, ">= 0.0.0", only: [:test, :dev], runtime: false},
      {:wallaby, "~> 0.23.0", [runtime: false, only: [:dev, :test]]},
      {:hound, "~> 1.0", only: [:dev, :test]}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      test: ["ecto.create --quiet", "ecto.migrate", "test"]
    ]
  end
end

