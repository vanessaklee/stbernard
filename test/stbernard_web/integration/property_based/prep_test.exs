defmodule StbernardWeb.PropertyBased.PrepTest do
  @moduledoc """
  Tests for the form submission, specifically the amount field
  """
  use ExUnit.Case
  use StbernardWeb.IntegrationCase, async: true
  use ExUnitProperties
  use Hound.Helpers
  use Wallaby.DSL
  alias Benchee.Formatters.{Console, HTML}
  alias Stbernard.Constants, as: C
  alias StbernardWeb.Hound, as: HH
  alias StbernardWeb.Wallaby, as: WH

  @moduletag timeout: 1200_000

  @tag prep: true
  # %{string: string, integer: integer, large_integer: large_integer, negative_integer: negative_integer, float: float}
  test "Test valid form" do
    Benchee.run(%{
      "Valid form (Hound)" => fn {_input, _session} ->
        pid = change_session_to("valid-submission")
        HH.fill_in_valid_form
        HH.submit()
        assert inner_html(find_element(:id, "alert")) == C.success()
        Hound.Helpers.Session.end_session(pid)
      end,
      "Valid form (Wallaby)" => fn {_input, session} ->
        alert = session
        |> WH.fill_in_valid_form()
        |> WH.submit()
        |> Wallaby.Browser.find(Query.css(".alert"))
        |> Wallaby.Browser.has_text?(C.success())
        assert alert
      end
    },
    inputs: %{
      "datatypes" => %{
        string: strings(),
        integer: integers(),
        large_integer: large_integers(),
        negative_integer: negative_integers(),
        float: floats()
      }
    },
    time: 18,
    memory_time: 25,
    formatters: [
      {Console, extended_statistics: true},
      {HTML, file: "benchee_output/lonestar/one/complex_form_" <> DateTime.to_string(DateTime.utc_now) <> ".html", auto_open: true}
    ],
    before_scenario: fn(inputs) ->
      Hound.start_session()
      {inputs, WH.start_sess(nil)}
    end,
    after_scenario: fn(_return) ->
      Hound.end_session
    end)
  end

  @tag datatypes: true
  # %{string: string, integer: integer, large_integer: large_integer, negative_integer: negative_integer, float: float}
  test "Test fuzzing random datatypes at amount field for expected success/failure outcomes" do
    Benchee.run(%{
      "str (Hound)" => fn {%{string: inputs}, _session} ->
        hound(inputs)
      end,
      "str (Wallaby)" => fn {%{string: inputs}, session} ->
        wallaby(inputs, session)
      end,
      "int (Hound)" => fn {%{integer: inputs}, _session} ->
        hound(inputs)
      end,
      "int (Wallaby)" => fn {%{integer: inputs}, session} ->
        wallaby(inputs, session)
      end,
      "large int (Hound)" => fn {%{large_integer: inputs}, _session} ->
        hound(inputs)
      end,
      "large int (Wallaby)" => fn {%{large_integer: inputs}, session} ->
        wallaby(inputs, session)
      end,
      "neg int (Hound)" => fn {%{negative_integer: inputs}, _session} ->
        hound(inputs)
      end,
      "neg int (Wallaby)" => fn {%{negative_integer: inputs}, session} ->
        wallaby(inputs, session)
      end,
      "float (Hound)" => fn {%{float: inputs}, _session} ->
        hound(inputs)
      end,
      "float (Wallaby)" => fn {%{float: inputs}, session} ->
        wallaby(inputs, session)
      end
    },
    inputs: %{
      "datatypes" => %{
        string: strings(),
        integer: integers(),
        large_integer: large_integers(),
        negative_integer: negative_integers(),
        float: floats()
      }
    },
    time: 40,
    memory_time: 50,
    formatters: [
      {Console, extended_statistics: true},
      {HTML, file: "benchee_output/lonestar/one/complex_form_" <> DateTime.to_string(DateTime.utc_now) <> ".html", auto_open: true}
    ],
    before_scenario: fn(inputs) ->
      Hound.start_session()
      {inputs, {:ok, session} = Wallaby.start_session()}
      session
    end,
    after_scenario: fn(_return) ->
      Hound.end_session
    end)
  end

  # Specific asserts for each field
  def assert_amount(gen, alert) do
    case MakeValid.number(gen) do
      num when num > 0 -> assert alert == C.success()
      _ -> assert alert == C.failure()
    end
  end

  def wallaby(inputs, session) do
    input = inputs |> Enum.shuffle() |> Enum.random()
    log("Wallaby", "Amount", input)
    alert = session
    |> WH.fill_in_valid_form()
    |> WH.swap_single_field("payment_amount", input)
    |> Wallaby.Browser.text(Query.css(".alert"))
    assert assert_amount(input, alert)
  end

  def hound(inputs) do
    input = inputs |> Enum.shuffle() |> Enum.random()
    pid = change_session_to("unknown-submission")
    log("Hound", "Amount", input)
    HH.fill_in_valid_form
    HH.swap_single_field("payment_amount", input)
    assert assert_amount(input, inner_html(find_element(:id, "alert")))
    Hound.Helpers.Session.end_session(pid)
  end

  # test data
  # StreamData `check all` is preferable to this, but does not produce good benchmarking results
  # Send streamed data as a tuple to accommate the cvv testing
  def integers, do: Enum.take(StreamData.integer(1..9999), 150)
  def large_integers, do: Enum.take(StreamData.integer(100000000000000..99999999999999999999999), 150)
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
