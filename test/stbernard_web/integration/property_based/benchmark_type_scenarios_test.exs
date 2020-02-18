defmodule StbernardWeb.PropertyBased.BenchmarkTypeScenariosTest do
  @moduledoc """
  Tests for the form submission, specifically the amount field
  """
  use ExUnit.Case
  use StbernardWeb.IntegrationCase, async: true
  use ExUnitProperties
  use Hound.Helpers
  use Wallaby.DSL

  alias StbernardWeb.Hound, as: HH
  alias Benchee.Formatters.{Console, HTML, Markdown}
  alias StbernardWeb.Hound, as: HH
  alias StbernardWeb.Wallaby, as: WH
  alias Stbernard.Constants, as: C
  alias StbernardWeb.BLNS

  @moduletag timeout: 1200_000

  @doc """
  User property-based testing to test that the amount succeeds if it is greater than 0, fails if not5
  """
  @tag benchmark_types: true
  property "All fields shall succeed", %{metadata: metadata} do
    tests = [
      %{field: "payment_amount", streamdata: integers(), assert: &assert_amount/2},
      %{field: "payment_account", streamdata: integers(), assert: &assert_account/2},
      %{field: "payment_name", streamdata: strings(), assert: &assert_name/2}
    ]
    Benchee.run(
      %{
        "Wallaby" => fn {inputs, session} -> for test <- tests do
          for input <- inputs, do: wallaby(metadata, test, input, session) end
        end,
        "Hound" => fn {inputs, _session} -> for test <- tests do
          for input <- inputs, do: hound(metadata, test, input) end
        end
      },
      inputs: %{
        "string" => strings(),
        "integer" => integers(),
        "large integer" => large_integers(),
        "negative integer" => negative_integers(),
        "float" => floats()
      },
      save: [path: "benchee_output/all/datatypes.benchee", tag: DateTime.to_string(DateTime.utc_now)],
      time: 5,
      before_scenario: fn(inputs) ->
        Hound.start_session()
        navigate_to("/")
        session = WH.start_sess(metadata)
        session |> WH.start
        {Enum.take(inputs, 2), session}
      end,
      after_scenario: fn(_return) ->
        Hound.end_session
      end,
      formatters: [
        {Console, extended_statistics: true},
        {HTML, file: "benchee_output/lonestar/benchmark_types_" <> DateTime.to_string(DateTime.utc_now) <> ".html", auto_open: true},
        {Markdown, file: "benchee_output/md/lonestar/benchmark_types_" <> DateTime.to_string(DateTime.utc_now) <> ".md"}
      ]
    )
  end

  # test structure for each library
  def wallaby(_metadata, %{field: field, assert: assert}, streamdata, session) do
    log("Hound", field, streamdata)
    WH.swap_single_field(session, field, streamdata)
    alert = WH.fetch_alert(session)
    WH.assert_alert(alert)
    assert.(streamdata, WH.elem_text(alert))
  end

  def hound(_metadata, %{field: field,  assert: assert}, streamdata) do
    log("Hound", field, streamdata)
    HH.swap_single_field(field, streamdata)
    full_alert = HH.fetch_alert()
    assert HH.assert_alert(full_alert)
    assert.(streamdata, HH.get_inner_html(full_alert))
  end

  # Specific asserts for each field
  def assert_amount(_, _) do
    fn(gen, alert) -> case gen do
        a when a > 0 -> alert == C.success()
        _ -> assert alert == C.failure()
      end
    end
  end

  def assert_account(_, _) do
    fn(gen, alert) ->
      min = C.account_min_length
      max = C.account_max_length
      len = Integer.digits(gen) |> length

      case len do
          a when a >= min and a <= max -> alert == C.success()
          _ -> assert alert == C.failure()
      end
    end
  end


  def assert_name(_, _) do
    fn(gen, alert) ->
      case BLNS.valid_name?(gen) do
        true -> assert alert == C.success()
        _ -> assert alert == C.failure()
      end
    end
  end

  # test data
  # StreamData `check all` is preferable to this, but does not produce good benchmarking results
  # Send streamed data as a tuple to accommate the cvv testing
  def integers, do: Enum.take(StreamData.integer(), 150)
  def large_integers, do: Enum.take(StreamData.integer(1000000..999999999), 150)
  def negative_integers, do: Enum.take(StreamData.integer(-9999..-1), 150)
  def floats, do: Enum.take(StreamData.float(), 150)
  def strings do
    "./test/showpony_blns_noemoji.txt"
    |> File.stream!
    |> Stream.map(&(String.replace(&1, "\n", "")))
    |> Stream.map(&(String.trim(&1)))
    |> Enum.shuffle
  end

  def log(lib, field, streamdata) do
    opener = if lib == "Hound", do: IO.ANSI.red(), else: IO.ANSI.blue()
    IO.puts opener <> "#{lib} " <>  IO.ANSI.reset() <>
      "test of " <> IO.ANSI.green() <> "#{field}" <> IO.ANSI.reset() <>
      " with value: " <> IO.ANSI.color_background(192) <> IO.ANSI.light_red() <> "#{streamdata}"  <> IO.ANSI.reset()
  end

end
