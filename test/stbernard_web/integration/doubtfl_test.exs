defmodule StbernardWeb.DoubtflTest do
  @moduledoc """
  Tests for the landing page.
  """
  use ExUnit.Case
  use Wallaby.DSL
  use Hound.Helpers
  import Wallaby.Query, only: [css: 2, text_field: 1]
  import Wallaby.Browser
  alias Benchee.Formatters.{Console, HTML}

  @moduletag timeout: 1200_000

  @tag codebeam2: true
  describe "Doubtfl test" do
    test "Doublfl lands, searches, and displays results as expected", _meta do
      Benchee.run(
        %{
          "Hound" => fn ->
            Hound.start_session()
            navigate_to("http://localhost:3000")
            assert page_title() == "Doubtfl · Phoenix Framework"
            click(find_element(:id, "search-term"))
            send_text("browser tests")
            send_keys(:enter)
            assert visible_text(find_element(:class, "found")) == "8 results found for: \"browser tests\""
            results = find_all_elements(:class, "search-result")
            assert Enum.count(results) == 8
            assert visible_text(List.first(results)) =~ "hound"
            # find_all_elements(:class, "search-result")
            # |> (fn results -> assert Enum.count(results) == 8
            #   results end).()
            # |> (fn results -> assert visible_text(List.first(results)) =~ "hound" end).()
            Hound.end_session()
          end,
          "Wallaby" => fn ->
            {:ok, session} = Wallaby.start_session()
            Wallaby.Browser.visit(session, "http://localhost:3000")
            assert page_title(session) == "Doubtfl · Phoenix Framework"
            session
            |> fill_in(text_field("search-term"), with: "browser tests")
            |> send_keys([:enter])
            |> assert_has(css(".found", text: "8 results found for: \"browser tests\""))
            |> find(css(".search-result", count: 8))
            |> List.first()
            |> has_text?("hound")
          end},
          time: 20,
          memory_time: 20,
          formatters: [
            {Console, extended_statistics: true},
            {HTML, file: "benchee_output/codebeam/doubtfl_" <> DateTime.to_string(DateTime.utc_now) <> ".html", auto_open: true}
          ]
        )
    end
  end
end
