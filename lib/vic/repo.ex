defmodule Vic.Repo do
  use Ecto.Repo,
    otp_app: :vic,
    adapter: Ecto.Adapters.Postgres
end
