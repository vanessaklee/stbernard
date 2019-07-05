use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :stbernard, StbernardWeb.Endpoint,
  http: [port: 4002],
  server: true

config :hound, browser: "chrome"

# Print only warnings and errors during test
config :logger, level: :warn
