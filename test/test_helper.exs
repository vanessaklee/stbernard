ExUnit.configure formatters: [ExUnit.CLIFormatter, ExUnitNotifier]
ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(Stbernard.Repo, :manual)

{:ok, _} = Application.ensure_all_started(:wallaby)
{:ok, _} = Application.ensure_all_started(:hound)
Application.put_env(:wallaby, :base_url, StbernardWeb.Endpoint.url())
