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
  User property-based testing to test that the amount succeeds if it is greater than 0, fails if not5
  """
  @tag lonestar3: true
  property "One field (amount) shall succeed with fuzzing" do
    Benchee.run(
      test_manager(),
      save: [path: "benchee_output/one/lonestar.benchee", tag: DateTime.to_string(DateTime.utc_now)],
      time: 8,
      warmup: 1,
      memory_time: 8,
      formatters: [
        {Console, extended_statistics: true},
        {HTML, file: "benchee_output/lonestar/one/fuzzing_" <> DateTime.to_string(DateTime.utc_now) <> ".html", auto_open: true},
        {Markdown, file: "benchee_output/md/lonestar/one/fuzzing_" <> DateTime.to_string(DateTime.utc_now) <> ".md"}
      ]
    )
    HH.end_sess()
  end

  def test_manager() do
    wallaby_sess = WH.start_sess(nil)
    wallaby_sess |> WH.start
    %{
      "Hound" => fn -> hound(%{streamdata: integers(), assert: &assert_amount/2}) end,
      "Wallaby" => fn -> wallaby(%{streamdata: integers(), assert: &assert_amount/2}, wallaby_sess) end
    }
  end

  # test structure for each library
  def wallaby(%{streamdata: streamdata, assert: assert}, session) do
    {agen, gen} = Enum.random(streamdata)
    log("Wallaby", gen)
    WH.fill_in_valid_form(session)
    WH.swap_single_field(session, "payment_amount", gen)
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
  def integers do
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
