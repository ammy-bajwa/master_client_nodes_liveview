defmodule MasterClientNodesLiveview.Repo do
  use Ecto.Repo,
    otp_app: :master_client_nodes_liveview,
    adapter: Ecto.Adapters.Postgres
end
