defmodule StbernardWeb.PropertyBased.AmountTest do
  @moduledoc """
  Tests for the form submission, specifically the amount field
  """
  use ExUnit.Case
  use StbernardWeb.IntegrationCase, async: true
  use ExUnitProperties

  alias StbernardWeb.Hound, as: HH
  alias StbernardWeb.Wallaby, as: WH
  alias Stbernard.Constants, as: C

  @moduletag timeout: 500000
  @max_runs 3
  @headless :headless

  @doc """
  User property-based testing to test that the amount succeeds if it is greater than 0, fails if not5
  """
  @tag propertyamount: true
  property "amount succeeds if it is greater than 0 fails if not", %{metadata: metadata} do

    Benchee.run(%{
      "wallaby-property-amount" => fn ->
        use Wallaby.DSL
        sess = WH.start_sess(metadata)
        sess |> WH.start
        check all gen_amt <- StreamData.integer(), max_runs: @max_runs do
          WH.swap_single_field(sess, "payment_amount", gen_amt)
          alert = WH.fetch_alert(sess)
          WH.assert_alert(alert)

          case gen_amt do
              a when a > 0 -> assert WH.elem_text(alert) == C.success()
              _ -> assert WH.elem_text(alert) == C.failure()
          end
        end
      end,
      "hound-property-amount" => fn ->
        defaultpid = HH.start(@headless)
        check all gen_amt <- StreamData.integer(), max_runs: @max_runs do
          pid = HH.start_new_sess(Integer.to_string(gen_amt))
          HH.swap_single_field("payment_amount", gen_amt)
          alert = HH.fetch_alert()
          assert HH.assert_alert(alert)

          case gen_amt do
              a when a > 0 -> assert HH.get_inner_html(alert) == C.success()
              _ -> assert HH.get_inner_html(alert) == C.failure()
          end
          HH.end_sess(pid)
        end
        HH.end_sess(defaultpid)
      end},
      time: 50,
      warmup: 1,
      memory_time: 50,
      formatters: [
        {Benchee.Formatters.Console, extended_statistics: true},
        {Benchee.Formatters.HTML, file: "benchee_output/property_amount.html", auto_open: true}
      ]
    )
  end

end
