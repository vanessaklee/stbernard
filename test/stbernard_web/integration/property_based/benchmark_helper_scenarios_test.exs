defmodule StbernardWeb.PropertyBased.BenchmarkHelpersScenariosTest do
  @moduledoc """
  Tests for the form submission, specifically the amount field
  """
  use ExUnit.Case
  use StbernardWeb.IntegrationCase, async: true
  use Hound.Helpers
  use Wallaby.DSL

  alias Benchee.Formatters.{Console, HTML, Markdown}

  @moduletag timeout: 1200_000

  @doc """
  User property-based testing to test that the amount succeeds if it is greater than 0, fails if not5
  """
  @tag benchmark_helpers: true
  describe "Common Helpers" do
    test "Test benchmarks of common helpers between Wallaby and Hound", _meta do
      Benchee.run(
        %{
          "Wallaby" => fn {inputs, session} ->
            for [wallaby_helper, _hound_helper] <- inputs, do:  wallaby_helper.(session)
          end,
          "Hound" => fn {inputs, _session} ->
            for [_wallaby_helper, hound_helper] <- inputs, do:  hound_helper.()
          end
        },
        time: 1,
        inputs: %{
          "Visible text" => [&wallaby_text/1, &hound_text/0],
          "DOM element displayed" => [&wallaby_display/1, &hound_display/0],
          "Click button" => [&wallaby_click/1, &hound_click/0],
          "Fill-in input" => [&wallaby_fill/1, &hound_fill/0],
          "Find DOM element" => [&wallaby_find/1, &hound_find/0],
          "Navigate to a page" => [&wallaby_nav/1, &hound_nav/0]
        },
        before_scenario: fn(inputs) ->
          Hound.start_session()
          {:ok, session} = Wallaby.start_session()
          {inputs, session}
        end,
        after_scenario: fn(_return) ->
          Hound.end_session
        end,
        formatters: [
          {Console, extended_statistics: true},
          {HTML, file: "benchee_output/lonestar/common_helper_scenarios" <> DateTime.to_string(DateTime.utc_now) <> ".html", auto_open: true},
          {Markdown, file: "benchee_output/md/lonestar/common_helper_scenarios" <> DateTime.to_string(DateTime.utc_now) <> ".md"}
        ]
      )
    end
  end

  def wallaby_nav(session), do: Wallaby.Browser.visit(session, "/")
  def hound_nav(), do: Hound.Helpers.Navigation.navigate_to("/")

  def wallaby_find(session), do: session |> Wallaby.Browser.assert_has(Query.css("#welcome"))
  def hound_find(), do: Hound.Helpers.Page.find_element(:id, "welcome")

  def wallaby_fill(session), do: session |> Wallaby.Browser.fill_in(Query.text_field("payment_name", with: "Jane Doe"))
  def hound_fill(), do: Hound.Helpers.Element.fill_field(Hound.Helpers.Page.find_element(:id, "payment_name"), "Jane Doe")

  def wallaby_click(session), do: session |> Wallaby.Browser.click(Wallaby.Query.button("payment_submit"))
  def hound_click(), do: Hound.Helpers.Element.click(Hound.Helpers.Page.find_element(:id, "payment_submit"))

  def wallaby_display(session), do: assert session |> Wallaby.Query.visible?(Wallaby.Query.css("#welcome"))
  def hound_display(), do: assert Hound.Helpers.Element.element_displayed?(Hound.Helpers.Page.find_element(:id, "welcome"))

  def wallaby_text(session), do: assert session |> Wallaby.Browser.has_text?(Wallaby.Query.css("#welcome"), "St. Bernard · the safe payment system")
  def hound_text(), do: assert Hound.Helpers.Element.visible_text(Hound.Helpers.Page.find_element(:id, "welcome")) == "St. Bernard · the safe payment system"

end
