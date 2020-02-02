defmodule StbernardWeb.IntegrationCase do
  @moduledoc """
  This module defines the test case to be used by
  integration tests.
  """
  use ExUnit.CaseTemplate

  using do
    quote do
      # pulls in a bunch of helpers
      alias Stbernard.Repo
      import Ecto
      import Ecto.Changeset
      import Ecto.Query

      import StbernardWeb.Router.Helpers
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Stbernard.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(Stbernard.Repo, {:shared, self()})
    end

    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(Stbernard.Repo, self())
    {:ok, metadata: metadata, conn: Phoenix.ConnTest.build_conn()}
  end
end
