defmodule StbernardWeb.PropertyBasedFormTest do
    @moduledoc """
    Tests for the form submission.

    ## Errors to check

    Cannot be blank - C.blank()
        - [:name, :postal, :account, :cvv, :amount], C.blank()
    Length
        - :name, C.name_length()
        - :postal, C.postal_length()
        - :account, C.account_min_length(),  max: C.account_max_length()
        - :cvv, min: C.cvv_min_length(), max: C.cvv_max_length()
    Expired
        - :exp_year
        - :exp_month
    Invalid
        - :exp_month not a number, C.invalid()
        - :amount not greater than 0, C.invalid()
    """
    use ExUnit.Case
    use Hound.Helpers

    # Property-based testing generators
    use ExUnitProperties

    alias StbernardWeb.BLNS
    alias StbernardWeb.Generators
    alias StbernardWeb.Hound, as: HH
    alias Stbernard.Constants, as: C

    @moduletag timeout: 120_000
    @max_runs 10
    @headless true

    @doc """
    User property-based testing to test that the amount succeeds if it is greater than 0, fails if not
    """
    property "amount succeeds if it is greater than 0 fails if not" do
      Benchee.run(%{
        "hound-property-amount" => fn ->
            HH.start(@headless)
            check all gen_amt <- StreamData.integer(), max_runs: @max_runs do
              HH.swap_single_field("payment_amount", gen_amt)
              alert = HH.fetch_alert()
              assert element_displayed?(alert)

              case gen_amt do
                  a when a > 0 -> assert inner_html(alert) == C.success()
                  _ -> assert assert inner_html(alert) == C.failure()
              end
            end
            HH.end_sess
        end},
        time: 15,
        warmup: 1,
        memory_time: 15,
        formatters: [{Benchee.Formatters.Console, extended_statistics: true}, {Benchee.Formatters.HTML, file: "benchee_output/property_amount.html", auto_open: true}]
      )
    end


    @doc """
    User property-based testing to test that the name is valid if it is a valid string
    """
    property "name is valid if it is a valid string" do
      HH.start(:headless)
      data = "./test/showpony_blns.txt" |> File.stream! |> Stream.map(&(String.replace(&1, "\n", "")))  |> Stream.map(&(String.trim(&1)))
      check all gen_name <- StreamData.member_of(data), max_runs: @max_runs do
        HH.swap_single_field("payment_name", gen_name)
        alert = HH.fetch_alert()
        assert element_displayed?(alert)

        case BLNS.valid_name?(gen_name) do
            true -> assert inner_html(alert) == C.success()
            _ -> assert inner_html(alert) == C.failure()
        end
      end
      HH.end_sess
    end

    @doc """
    User property-based testing to test that the cvv succeeds

    Define the property as simply & specfically as possible
    """
    property "cvv succeeds cvv >= ccv min length & cvv <= cvv max length" do
        require Integer
        HH.start(:headless)

        good_cvv_generator = Generators.cvv_generator(:good)
        bad_cvv_generator = Generators.cvv_generator(:bad)

        check all {good_or_bad, elem} <- StreamData.one_of([good_cvv_generator, bad_cvv_generator]), max_runs: @max_runs do # default is max_runs: 100
          HH.swap_single_field("payment_cvv", elem)
          alert = HH.fetch_alert()
          assert element_displayed?(alert)

            case good_or_bad do
                :good -> assert inner_html(alert) == C.success()
                :bad -> assert inner_html(alert) == C.failure()
            end
        end
        HH.end_sess
    end

    @doc """
    User property-based testing to test that the account succeeds
    """
    property "account succeeds if it is not null and not more than account length min and max" do
      HH.start(:headless)

      check all generated <- StreamData.integer() do
        min = C.account_min_length
        max = C.account_max_length

        HH.swap_single_field("payment_account", generated)
        alert = HH.fetch_alert()
        assert element_displayed?(alert)

        case String.length(Integer.to_string(generated)) do
            a when a >= min and a <= max -> assert inner_html(alert) == C.success()
            _ -> assert inner_html(alert) == C.failure()
        end
      end
      HH.end_sess
    end


end
