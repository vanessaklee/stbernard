use Mix.Config

config :stbernard, Stbernard.Repo,
  username: "postgres",
  password: "postgres",
  database: "stbernard_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :stbernard, StbernardWeb.Endpoint,
  http: [port: 4001],
  server: true

config :stbernard, :sql_sandbox, true

config :wallaby,
  driver: Wallaby.Experimental.Chrome,
  chrome: [headless: false],
  max_wait_time: 5_000,
  creenshot_on_failure: true

config :hound,
  driver: "chrome_driver",
  retry_time: 1000,
  retries: 5

# Print only warnings and errors during test
config :logger, level: :warn
