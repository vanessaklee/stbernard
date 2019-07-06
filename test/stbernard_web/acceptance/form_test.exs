defmodule StbernardWeb.FormTest do
    @moduledoc """
    Tests for the form for required, length, expiration, validity
    """
    use ExUnit.Case
    use Hound.Helpers

    import StbernardWeb.Router.Helpers
    alias Stbernard.Constants
  
    hound_session()

    # globals
    @valid_names ["Marie Curie", "Jane Austen", "Willy Nelson"]
    @invalid_names ["", "Supercalifragilisticexpialidocious McAuthor"]

    @valid_postals ["75005", "GU34 1SD", "78704"]
    @invalid_postals ["", "1234561234 56 34 abc"]

    @valid_accounts [378282246310005, 4111111111111111]
    @invalid_accounts [0, "", -1, 60111111111111171234567890]

    @valid_cvvs ["123", "1234"]
    @invalid_cvvs ["", "1", "123456"]

    @valid_amounts [1, 10.00, 1234, "42"]
    @invalid_amounts ["", -1, 0]

    @doc """
    Valid inputs should yield success message
    """
    describe "valid inputs" do
        test "valid inputs in the form yield a success message", _meta do
            url = page_url(StbernardWeb.Endpoint, :index)
            navigate_to(url)

            # retrieve form elements
            form = find_element(:id, "payment_form")

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

            find_within_element(form, :id, "payment_submit") |> click()

            # new page is loaded so it must be retrieved again
            submitted_form = find_element(:id, "payment_form")

            take_screenshot("screenshots/form_success.png")

            alert = find_within_element(submitted_form, :id, "alert")
            assert element_displayed?({:id, "alert"})
            assert inner_html(alert) == Constants.success()
        end
    end

    @doc """
    Invalid inputs should yield failure message
    """
    describe "invalid inputs" do
        test "invalid name in the form yields a failure message", _meta do
            url = page_url(StbernardWeb.Endpoint, :index)
            navigate_to(url)

            # retrieve form elements
            form = find_element(:id, "payment_form")
            valid_form(form)
            :timer.sleep(1000)
            
            # refill with invalid value
            find_within_element(form, :id, "payment_name") |> fill_field(Enum.random(@invalid_names))
            find_within_element(form, :id, "payment_submit") |> click()

            check_failure()
        end

        test "invalid postal in the form yields a failure message", _meta do
            url = page_url(StbernardWeb.Endpoint, :index)
            navigate_to(url)

            # retrieve form elements
            form = find_element(:id, "payment_form")
            valid_form(form)
            :timer.sleep(1000)
            
            # refill with invalid value
            find_within_element(form, :id, "payment_postal") |> fill_field(Enum.random(@invalid_postals))
            find_within_element(form, :id, "payment_submit") |> click()

            check_failure()
        end

        test "invalid account in the form yields a failure message", _meta do
            url = page_url(StbernardWeb.Endpoint, :index)
            navigate_to(url)

            # retrieve form elements
            form = find_element(:id, "payment_form")
            valid_form(form)
            :timer.sleep(1000)
            
            # refill with invalid value
            find_within_element(form, :id, "payment_account") |> fill_field(Enum.random(@invalid_accounts))
            find_within_element(form, :id, "payment_submit") |> click()

            check_failure()
        end

        test "invalid cvv in the form yields a failure message", _meta do
            url = page_url(StbernardWeb.Endpoint, :index)
            navigate_to(url)

            # retrieve form elements
            form = find_element(:id, "payment_form")
            valid_form(form)
            :timer.sleep(1000)
            
            # refill with invalid value
            find_within_element(form, :id, "payment_cvv") |> fill_field(Enum.random(@invalid_cvvs))
            find_within_element(form, :id, "payment_submit") |> click()

            check_failure()
        end

        test "invalid amount in the form yields a failure message", _meta do
            url = page_url(StbernardWeb.Endpoint, :index)
            navigate_to(url)

            # retrieve form elements
            form = find_element(:id, "payment_form")
            valid_form(form)
            :timer.sleep(1000)
            
            # refill with invalid value
            find_within_element(form, :id, "payment_amount") |> fill_field(Enum.random(@invalid_amounts))
            find_within_element(form, :id, "payment_submit") |> click()

            check_failure()
        end
    end

    defp valid_form(form) do
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

    defp check_failure do
        # new page is loaded so it must be retrieved again
        submitted_form = find_element(:id, "payment_form")
        alert = find_within_element(submitted_form, :id, "alert")
        assert element_displayed?({:id, "alert"})
        assert inner_html(alert) == Constants.failure()
    end
end


