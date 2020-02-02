defmodule Stbernard.Repo do
  use Ecto.Repo,
    otp_app: :stbernard,
    adapter: Ecto.Adapters.Postgres
end
