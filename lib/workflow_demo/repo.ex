defmodule WorkflowDemo.Repo do
  use Ecto.Repo,
    otp_app: :workflow_demo,
    adapter: Ecto.Adapters.Postgres
end
