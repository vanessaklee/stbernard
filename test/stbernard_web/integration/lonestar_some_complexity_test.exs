defmodule StbernardWeb.PropertyBased.LonestarSomeComplexityTest do
  @moduledoc """
  Tests for the form submission, specifically the amount field
  """
  use ExUnit.Case
  use StbernardWeb.IntegrationCase, async: true
  use ExUnitProperties
  use Hound.Helpers
  use Wallaby.DSL
  import Wallaby.Browser

  alias Benchee.Formatters.{Console, HTML, Markdown}
  alias StbernardWeb.Hound, as: HH
  alias StbernardWeb.Wallaby, as: WH
  alias Stbernard.Constants, as: C

  @moduletag timeout: 1200_000

  @doc """
  Test one field (amount) for expected success/failure outcomes
  """
  @tag lonestar3: true
  describe "Form input tests" do
    test "Test one field (amount) for expected success/failure outcomes" do
      Benchee.run(
        %{
          "Hound" => fn _session -> hound(%{streamdata: test_data(), assert: &assert_amount/2}) end,
          "Wallaby" => fn session -> wallaby(%{streamdata: test_data(), assert: &assert_amount/2}, session) end
        },
        before_scenario: fn(_inputs) ->
          session = WH.start_sess(nil)
          session |> WH.start
          session
        end,
        time: 3,
        warmup: 1,
        memory_time: 3,
        formatters: [
          {Console, extended_statistics: true},
          {HTML, file: "benchee_output/lonestar/one/complex_form_" <> DateTime.to_string(DateTime.utc_now) <> ".html", auto_open: true},
          {Markdown, file: "benchee_output/md/lonestar/one/complex_form_" <> DateTime.to_string(DateTime.utc_now) <> ".md"}
        ]
      )
    end
  end

  # test structure for each library
  def wallaby(%{streamdata: streamdata, assert: assert}, session) do
    {agen, gen} = Enum.random(streamdata)
    log("Wallaby", gen)
    session
    |> WH.fill_in_valid_form()
    |> WH.swap_single_field("payment_amount", gen)
    |> Browser.click(Query.button("payment_submit"))
    assert.(agen, Element.text(find(session, Query.css(".alert"))))
  end

  def hound(%{streamdata: streamdata, assert: assert}) do
    {agen, gen} = Enum.random(streamdata)
    log("Hound", gen)
    HH.start_sess()
    HH.fill_in_valid_form()
    HH.swap_single_field("payment_amount", gen)
    assert.(agen, inner_html(find_element(:id, "alert")))
  end

  # Specific asserts for each field
  def assert_amount(_, _) do
    fn(gen, alert) -> case MakeValid.number(gen) do
        num when num > 0 -> alert == C.success()
        _ -> assert alert == C.failure()
      end
    end
  end

  # test data
  # StreamData `check all` is preferable to this, but does not produce good benchmarking results
  # Send streamed data as a tuple to accommate the cvv testing
  def test_data do
    integers = Enum.take(StreamData.integer(), 50) |> Enum.map(fn n -> {n, n} end)
    strings =  "./test/integer_blns.txt"
      |> File.stream!
      |> Stream.map(&(String.replace(&1, "\n", "")))
      |> Stream.map(&(String.trim(&1)))
      |> Enum.map(fn n -> {n, n} end)
      |> Enum.take(20)
    Enum.dedup(strings ++ integers)
    |> Enum.shuffle
  end

  def log(lib, gen) do
    opener = if lib == "Hound", do: IO.ANSI.red(), else: IO.ANSI.blue()
    IO.puts opener <> "#{lib} " <>  IO.ANSI.reset() <>
      "test of " <> IO.ANSI.green() <> "AMOUNT" <> IO.ANSI.reset() <>
      " with value: " <> IO.ANSI.color_background(192) <> IO.ANSI.light_red() <> "#{gen}"  <> IO.ANSI.reset()
  end

end
