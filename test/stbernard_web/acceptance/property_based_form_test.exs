defmodule StbernardWeb.PropertyBasedFormTest do
    @moduledoc """
    Tests for the form submission.

    ## Errors to check

    Cannot be blank - Constants.blank()
        - [:name, :postal, :account, :cvv, :amount], Constants.blank()
    Length
        - :name, Constants.name_length()
        - :postal, Constants.postal_length()
        - :account, Constants.account_min_length(),  max: Constants.account_max_length()
        - :cvv, min: Constants.cvv_min_length(), max: Constants.cvv_max_length()
    Expired
        - :exp_year
        - :exp_month
    Invalid
        - :exp_month not a number, Constants.invalid()
        - :amount not greater than 0, Constants.invalid()
    """
    use ExUnit.Case
    use Hound.Helpers

    # Property-based testing generators
    use ExUnitProperties

    import StbernardWeb.Router.Helpers
    alias Stbernard.Constants
  
    hound_session()
    @moduletag timeout: 120000

    # globals
    @valid_names ["Marie Curie", "Jane Austen", "Willy Nelson"]

    @valid_postals ["75005", "GU34 1SD", "78704"]

    @valid_accounts [378282246310005, 6011111111111117, 4111111111111111]

    @valid_cvvs ["123", "1234"]

    @valid_amounts [1, 10.00, 1234]

    @doc """
    User property-based testing to test that the amount succeeds if it is greater than 0, fails if not
    """
    property "amount succeeds if it is greater than 0 fails if not" do
        url = page_url(StbernardWeb.Endpoint, :index)
        navigate_to(url)

        check all gen_amt <- StreamData.integer() do
            form = find_element(:id, "payment_form")
            fill_in_valid_form(form)
            find_within_element(form, :id, "payment_amount") |> fill_field(gen_amt)
            find_within_element(form, :id, "payment_submit") |> click()

            submitted_form = find_element(:id, "payment_form")
            alert = find_within_element(submitted_form, :id, "alert")
            assert element_displayed?({:id, "alert"})

            case gen_amt do
                a when a > 0 -> assert inner_html(alert) == Constants.success()
                _ -> assert inner_html(alert) == Constants.failure()
            end
        end
    end

    @doc """
    User property-based testing to test that the cvv succeeds 

    Define the property as simply & specfically as possible
    """
    property "cvv succeeds cvv >= ccv min length & cvv <= cvv max length" do
        url = page_url(StbernardWeb.Endpoint, :index)
        navigate_to(url)

        check all generated <- StreamData.integer(), max_run: 25 do # default is max_runs: 100 
            min = Constants.cvv_min_length 
            max = Constants.cvv_max_length

            form = find_element(:id, "payment_form")
            fill_in_valid_form(form)
            find_within_element(form, :id, "payment_cvv") |> fill_field(generated)
            find_within_element(form, :id, "payment_submit") |> click()

            submitted_form = find_element(:id, "payment_form")
            alert = find_within_element(submitted_form, :id, "alert")

            # don't replicate system method uses Kernel & parse; use Kernel & digits here
            case length(Integer.digits(generated)) do
                cvv when is_integer(cvv) and cvv >= min and cvv <= max -> assert inner_html(alert) == Constants.success()
                _ -> assert inner_html(alert) == Constants.failure()
            end
        end
    end

    @doc """
    User property-based testing to test that the account succeeds 
    """
    property "account succeeds if it is not null and not more than account length min and max" do
        url = page_url(StbernardWeb.Endpoint, :index)
        navigate_to(url)

        check all generated <- StreamData.integer() do
            min = Constants.account_min_length 
            max = Constants.account_max_length

            form = find_element(:id, "payment_form")
            fill_in_valid_form(form)
            find_within_element(form, :id, "payment_account") |> fill_field(generated)
            find_within_element(form, :id, "payment_submit") |> click()

            # new page is loaded so it must be retrieved again
            submitted_form = find_element(:id, "payment_form")
            alert = find_within_element(submitted_form, :id, "alert")
            assert element_displayed?({:id, "alert"})

            case String.length(Integer.to_string(generated)) do
                a when a >= min and a <= max -> assert inner_html(alert) == Constants.success()
                _ -> assert inner_html(alert) == Constants.failure()
            end
        end
    end

    defp fill_in_valid_form(form) do
        # ID
        name = find_within_element(form, :id, "payment_name")
        postal = find_within_element(form, :id, "payment_postal")
        account = find_within_element(form, :id, "payment_account")

        # XPath
        cvv = find_element(:xpath, ~s|//*[@id="payment_cvv"]|)
        amount = find_element(:xpath, ~s|//*[@id="payment_amount"]|)
        
        # populate the form fields
        name |> fill_field(Enum.random(@valid_names))
        postal |> fill_field(Enum.random(@valid_postals))
        account |> fill_field(Enum.random(@valid_accounts))
        cvv |> fill_field(Enum.random(@valid_cvvs))
        amount |> fill_field(Enum.random(@valid_amounts))

        execute_script("document.getElementById(\"payment_exp_year\").value = \"#{Enum.random(Constants.years())}\"")
        execute_script("document.getElementById(\"payment_exp_month\").value = \"#{Enum.random(Constants.months())}\"")
    end

end