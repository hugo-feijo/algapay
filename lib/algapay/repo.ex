defmodule Algapay.Repo do
  use Ecto.Repo,
    otp_app: :algapay,
    adapter: Ecto.Adapters.Postgres
end
