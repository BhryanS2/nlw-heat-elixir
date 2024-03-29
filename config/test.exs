import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :nlw_heat_elixir, NlwHeatElixir.Repo,
  username: "bhryan",
  password: "juslene",
  database: "nlw_heat_elixir_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :nlw_heat_elixir, NlwHeatElixirWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "Msh3zOUBskcXUYOctMdV6odzZMuF0orxDxYT7SoP8PuVoQMvEg1JK+35048dpIct",
  server: false

# In test we don't send emails.
config :nlw_heat_elixir, NlwHeatElixir.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
