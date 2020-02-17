defmodule StbernardWeb.PropertyBased.BenchmarkTest do
  @moduledoc """
  Tests for the form submission, specifically the amount field
  """
  use ExUnit.Case
  use StbernardWeb.IntegrationCase, async: true
  use ExUnitProperties

  alias Benchee.Formatters.{Console, HTML, Markdown}
  alias StbernardWeb.Hound, as: HH
  alias StbernardWeb.Wallaby, as: WH
  alias Stbernard.Constants, as: C
  alias StbernardWeb.BLNS

  @moduletag timeout: 1200_000

  @doc """
  User property-based testing to test that the amount succeeds if it is greater than 0, fails if not5
  """
  @tag allfuzzy: true
  property "All fields shall succeed", %{metadata: metadata} do
    tests = [
      %{field: "payment_amount", streamdata: integers(), assert: &assert_amount/2},
      %{field: "payment_account", streamdata: integers(), assert: &assert_account/2},
      %{field: "payment_cvv", streamdata: cvvs(), assert: &assert_cvv/2},
      %{field: "payment_name", streamdata: strings(), assert: &assert_name/2}
    ]
    Benchee.run(
      test_manager(metadata, tests, nil),
      save: [path: "benchee_output/all/allfuzzy.benchee", tag: DateTime.to_string(DateTime.utc_now)],
      time: 200,
      warmup: 1,
      memory_time: 250,
      formatters: [
        {Console, extended_statistics: true},
        {HTML, file: "benchee_output/fuzzing" <> DateTime.to_string(DateTime.utc_now) <> ".html", auto_open: true},
        {Markdown, file: "benchee_output/md/fuzzing" <> DateTime.to_string(DateTime.utc_now) <> ".md"}
      ]
    )
  end

  @tag onefuzzy: true
  @tag amount: true
  property "One field (amount) shall succeed", %{metadata: metadata} do
    tests = [%{field: "payment_amount", streamdata: integers(), assert: &assert_amount/2}]
    Benchee.run(
      test_manager(metadata, tests, nil),
      save: [path: "benchee_output/one/one.benchee", tag: DateTime.to_string(DateTime.utc_now)],
      time: 200,
      warmup: 1,
      memory_time: 250,
      formatters: [
        {Console, extended_statistics: true},
        {HTML, file: "benchee_output/fuzzing_one" <> DateTime.to_string(DateTime.utc_now) <> ".html", auto_open: true},
        {Markdown, file: "benchee_output/md/fuzzing_one" <> DateTime.to_string(DateTime.utc_now) <> ".md"}
      ]
    )
  end
  @tag onefuzzy: true
  @tag account: true
  property "One field (account) shall succeed", %{metadata: metadata} do
    tests = [%{field: "payment_account", streamdata: integers(), assert: &assert_account/2}]
    Benchee.run(
      test_manager(metadata, tests, nil),
      save: [path: "benchee_output/one/one.benchee", tag: DateTime.to_string(DateTime.utc_now)],
      time: 200,
      warmup: 1,
      memory_time: 250,
      formatters: [
        {Console, extended_statistics: true},
        {HTML, file: "benchee_output/fuzzing_one" <> DateTime.to_string(DateTime.utc_now) <> ".html", auto_open: true},
        {Markdown, file: "benchee_output/md/fuzzing_one" <> DateTime.to_string(DateTime.utc_now) <> ".md"}
      ]
    )
  end
  @tag onefuzzy: true
  @tag cvv: true
  property "One field (cvv) shall succeed", %{metadata: metadata} do
    tests = [%{field: "payment_cvv", streamdata: cvvs(), assert: &assert_cvv/2}]
    Benchee.run(
      test_manager(metadata, tests, nil),
      save: [path: "benchee_output/one/one.benchee", tag: DateTime.to_string(DateTime.utc_now)],
      time: 200,
      warmup: 1,
      memory_time: 250,
      formatters: [
        {Console, extended_statistics: true},
        {HTML, file: "benchee_output/fuzzing_one" <> DateTime.to_string(DateTime.utc_now) <> ".html", auto_open: true},
        {Markdown, file: "benchee_output/md/fuzzing_one" <> DateTime.to_string(DateTime.utc_now) <> ".md"}
      ]
    )
  end
  @tag onefuzzy: true
  @tag name: true
  property "One field (name) shall succeed", %{metadata: metadata} do
    tests = [%{field: "payment_name", streamdata: strings(), assert: &assert_name/2}]
    Benchee.run(
      test_manager(metadata, tests, nil),
      save: [path: "benchee_output/one/one.benchee", tag: DateTime.to_string(DateTime.utc_now)],
      time: 200,
      warmup: 1,
      memory_time: 250,
      formatters: [
        {Console, extended_statistics: true},
        {HTML, file: "benchee_output/fuzzing_one" <> DateTime.to_string(DateTime.utc_now) <> ".html", auto_open: true},
        {Markdown, file: "benchee_output/md/fuzzing_one" <> DateTime.to_string(DateTime.utc_now) <> ".md"}
      ]
    )
  end

  @tag hound: true
  property "Hound only: One field shall succeed", %{metadata: metadata} do
    tests = [%{field: "payment_amount", streamdata: integers(), assert: &assert_amount/2}]
    Benchee.run(
      test_manager(metadata, tests, :hound),
      save: [path: "benchee_output/hound.benchee", tag: DateTime.to_string(DateTime.utc_now)],
      time: 10,
      warmup: 1,
      memory_time: 20,
      formatters: [
        {Console, extended_statistics: true},
        {HTML, file: "benchee_output/hound/fuzzing" <> DateTime.to_string(DateTime.utc_now) <> ".html", auto_open: true},
        {Markdown, file: "benchee_output/md/hound/fuzzing" <> DateTime.to_string(DateTime.utc_now) <> ".md"}
      ]
    )
  end
  @tag wallaby: true
  property "Wallaby only: One field shall succeed", %{metadata: metadata} do
    tests = [%{field: "payment_amount", streamdata: integers(), assert: &assert_amount/2}]
    Benchee.run(
      test_manager(metadata, tests, :wallaby),
      save: [path: "benchee_output/wallaby.benchee", tag: DateTime.to_string(DateTime.utc_now)],
      time: 10,
      warmup: 1,
      memory_time: 20,
      formatters: [
        {Console, extended_statistics: true},
        {HTML, file: "benchee_output/wallaby/fuzzing" <> DateTime.to_string(DateTime.utc_now) <> ".html", auto_open: true},
        {Markdown, file: "benchee_output/md/wallaby/fuzzing" <> DateTime.to_string(DateTime.utc_now) <> ".md"}
      ]
    )
  end

  def test_manager(metadata, tests, library \\ nil) do
    case library do
      :hound -> %{"Hound" => fn -> for test <- tests, do: hound(metadata, test) end}
      :wallaby -> %{"Wallaby" => fn -> for test <- tests, do: wallaby(metadata, test) end}
      nil -> %{
        "Wallaby" => fn -> for test <- tests, do: wallaby(metadata, test) end,
        "Hound" => fn -> for test <- tests, do: hound(metadata, test) end
      }
    end
  end

  # test structure for each library
  def wallaby(metadata, %{field: field, streamdata: streamdata, assert: assert}) do
    use Wallaby.DSL
    sess = WH.start_sess(metadata)
    sess |> WH.start
    {agen, gen} = Enum.random(streamdata)
    IO.inspect "Wallby test of #{field} with value: #{gen}"
    WH.swap_single_field(sess, field, gen)
    alert = WH.fetch_alert(sess)
    WH.assert_alert(alert)
    assert.(agen, WH.elem_text(alert))
  end

  def hound(_metadata, %{field: field, streamdata: streamdata, assert: assert}) do
    alias StbernardWeb.Hound, as: HH
    HH.start()
    {agen, gen} = Enum.random(streamdata)
    IO.inspect "Hound test of #{field} with value: #{gen}"
    HH.swap_single_field(field, gen)
    full_alert = HH.fetch_alert()
    assert HH.assert_alert(full_alert)
    assert.(agen, HH.get_inner_html(full_alert))
    HH.end_sess()
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

  def assert_cvv(_, _) do
    fn(good_or_bad, alert) ->
      case good_or_bad do
        :good -> alert == C.success()
        :bad -> alert == C.failure()
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
  def integers, do: Enum.take(StreamData.integer(), 50) |> Enum.map(fn n -> {n, n} end)
  def strings do
    "./test/showpony_blns.txt"
    |> File.stream!
    |> Stream.map(&(String.replace(&1, "\n", "")))
    |> Stream.map(&(String.trim(&1)))
    |> Enum.map(fn n -> {n, n} end)
  end
  def cvvs do
    the_good = Enum.take(StbernardWeb.Generators.cvv_generator(:good), 25)
    the_bad = Enum.take(StbernardWeb.Generators.cvv_generator(:bad), 25)
    Enum.shuffle(the_good ++ the_bad)
  end

end
