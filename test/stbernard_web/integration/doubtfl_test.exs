defmodule StbernardWeb.DoubtflTest do
  @moduledoc """
  Tests for the landing page.
  """
  use ExUnit.Case
  use Wallaby.DSL
  use Hound.Helpers
  import Wallaby.Query
  import Wallaby.Browser
  alias Benchee.Formatters.{Console, HTML}

  @moduletag timeout: 1200_000

  @tag codebeam3: true
  describe "Doubtfl test" do
    test "Doublfl lands, searches, and displays results as expected", _meta do
      Benchee.run(
        %{
          "Hound" => fn _session ->
            pid = change_session_to("unknown-submission")
            navigate_to("http://localhost:3000")
            assert page_title() == "Doubtfl · Phoenix Framework"
            log("Hound", "Validated page title.")
            click(find_element(:id, "search-term"))
            send_text("browser tests")
            send_keys(:enter)

            # find_element(:id, "search-term")
            # |> fill_field("browser tests")
            # element = find_element(:id, "search-form")
            # submit_element(element)

            # log("Hound", "...trying to find the results.")
            # find_element(:xpath, ~s|//html/body/main/div/div/div[2]/div/h3|)
            # assert text_visible?({:class, "found"}, ~r/8 results found/)
            # log("Hound", "Validated 8 search results in message.")

            # results = find_all_elements(:class, "search-result")
            find_element(:xpath, ~s|//html/body/main/div/div/div[2]/div/h3|)
            results = find_all_elements(:xpath, ~s|//html/body/main/div/div/div[2]/div/div[@class="search-result"]|)
            assert Enum.count(results) == 8
            assert visible_text(List.first(results)) =~ "hound"

            # find_all_elements(:class, "search-result")
            # |> (fn results -> assert Enum.count(results) == 8
            #   results end).()
            # |> (fn results -> assert visible_text(List.first(results)) =~ "hound" end).()

            log("Hound", "Validated data appears in search results.")
            Hound.Helpers.Session.end_session(pid)
          end,
          "Wallaby" => fn session ->
            Wallaby.Browser.visit(session, "http://localhost:3000")
            assert page_title(session) == "Doubtfl · Phoenix Framework"
            log("Wallaby", "Validated page title.")
            session
            |> fill_in(text_field("search-term"), with: "browser tests")
            |> send_keys([:enter])
            |> assert_has(css(".found", text: "8 results found"))
            |> (fn session -> log("Walalby", "Validated 8 search results in message.")
               session end).()
            |> find(css(".search-result", count: 8))
            |> List.first()
            |> has_text?("hound")
            log("Wallaby", "Validated data appears in search results.")
          end},
          before_scenario: fn(_inputs) ->
            Hound.start_session()
            {:ok, session} = Wallaby.start_session()
            session
          end,
          after_scenario: fn(_return) ->
            Hound.end_session
          end,
          time: 5,
          memory_time: 5,
          formatters: [
            {Console, extended_statistics: true},
            {HTML, file: "benchee_output/codebeam/doubtfl_" <> DateTime.to_string(DateTime.utc_now) <> ".html", auto_open: true}
          ]
        )
    end
  end

  @tag codebeam4: true
  describe "Doubtfl test 2" do
    test "2 Doublfl lands, searches, and displays results as expected", _meta do
      Benchee.run(
        %{
          "Hound" => fn _session ->
            pid = change_session_to("unknown-submission")
            navigate_to("http://www.google.com")

            find_element(:name, "q") |> fill_field("browser tests")
            find_element(:name, "btnK") |> click()
            assert text_visible?(find_element(:id, "result-stats"), ~r/results/)

            find_element(:xpath, ~s|//*[@id="rso"]|)
            assert text_visible?({:xpath, ~s|//*[@id="rso"]/div[1]/div/div[1]|}, ~r/browser/)

            results = find_all_elements(:xpath, ~s|//*[@class="g"]|)
            assert Enum.count(results) > 10

            Hound.Helpers.Session.end_session(pid)
          end,
          "Wallaby" => fn session ->
            session
            |> Wallaby.Browser.visit("http://www.google.com")
            |> fill_in(text_field("q"), with: "browser tests")
            |> send_keys([:enter])
            |> assert_has(css("#rso", text: "results"))
            |> find(css(".g", count: :any))
            |> (fn list ->
              assert Enum.count(list) > 10
              list
            end).()
            |> List.first()
            |> (fn first -> assert has_text?(first, "browser") end).()
          end},
          before_scenario: fn(_inputs) ->
            Hound.start_session()
            {:ok, session} = Wallaby.start_session()
            session
          end,
          after_scenario: fn(_return) ->
            Hound.end_session
          end,
          time: 5,
          memory_time: 5,
          formatters: [
            {Console, extended_statistics: true},
            {HTML, file: "benchee_output/codebeam/doubtfl_" <> DateTime.to_string(DateTime.utc_now) <> ".html", auto_open: true}
          ]
        )
    end
  end

  defp text_visible?(element, pattern, retries \\ 5)
  defp text_visible?(element, pattern, 0) do
    visible_in_element?(element, pattern)
  end
  defp text_visible?(element, pattern, retries) do
    case visible_in_element?(element, pattern) do
      true -> true
      false ->
        :timer.sleep(1)
        text_visible?(element, pattern, retries - 1)
    end
  end

  def log(lib, message) do
    opener = if lib == "Hound", do: IO.ANSI.red(), else: IO.ANSI.blue()
    IO.puts opener <> "#{lib} " <>  IO.ANSI.reset() <>
      IO.ANSI.green() <> "#{message}" <> IO.ANSI.reset()
  end
end
