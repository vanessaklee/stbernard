use Mix.Config

# Configure your database
config :stbernard, Stbernard.Repo,
  username: "postgres",
  password: "postgres",
  database: "stbernard_systemtest",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

# We don't run a server during test, but we need it for systemtest!
config :stbernard, StbernardWebWeb.Endpoint,
  http: [port: 5000],
  server: true

config :wallaby,
  driver: Wallaby.Experimental.Chrome,
  chrome: [headless: true],
  max_wait_time: 5_000,
  creenshot_on_failure: true

config :hound,
  driver: "chrome_driver",
  browser: "chrome_headless",
  retry_time: 5_000,
  retries: 10

# Print only warnings and errors during test
config :logger, level: :warn
