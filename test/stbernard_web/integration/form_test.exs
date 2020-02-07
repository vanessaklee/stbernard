defmodule StbernardWeb.FormTest do
    @moduledoc """
    Tests for the form for required, length, expiration, validity
    """
    use ExUnit.Case
    use StbernardWeb.IntegrationCase, async: true
    use Hound.Helpers
    import StbernardWeb.Router.Helpers
    alias Stbernard.Constants, as: C

    @doc """
    Valid inputs should yield success message
    """
    describe "valid inputs" do
      test "valid inputs in the form yield a success message", _meta do
        for c <- 0..10 do
          Hound.start_session
          IO.puts "Run test: #{c}x"
          url = page_url(StbernardWeb.Endpoint, :index)
          navigate_to(url)

          # retrieve form elements
          form = find_element(:id, "payment_form")
          # ID
          find_within_element(form, :id, "payment_name") |> fill_field(Enum.random(C.valid_names()))
          find_within_element(form, :id, "payment_postal") |> fill_field(Enum.random(C.valid_postals()))
          find_within_element(form, :id, "payment_account") |> fill_field(Enum.random(C.valid_accounts()))
          # xpath
          find_element(:xpath, ~s|//*[@id="payment_cvv"]|) |> fill_field(Enum.random(C.valid_cvvs()))
          find_element(:xpath, ~s|//*[@id="payment_amount"]|) |> fill_field(Enum.random(C.valid_amounts()))
          # js
          execute_script("document.getElementById(\"payment_exp_year\").value = \"#{Enum.random(C.years())}\"")
          execute_script("document.getElementById(\"payment_exp_month\").value = \"#{Enum.random(C.months())}\"")

          find_within_element(form, :id, "payment_submit") |> click()

          # new page is loaded so it must be retrieved again
          submitted_form = find_element(:id, "payment_form")

          # take_screenshot("test/stbernard_web/integration/screenshots/form_test_"<>DateTime.to_string(DateTime.utc_now)<>".png")

          alert = find_within_element(submitted_form, :id, "alert")
          assert element_displayed?({:id, "alert"})
          assert inner_html(alert) == C.success()
          Hound.end_session
        end
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
        fill_in_valid_form(form)
        :timer.sleep(1000)

        # refill with invalid value
        find_within_element(form, :id, "payment_name") |> fill_field(Enum.random(C.invalid_names()))
        find_within_element(form, :id, "payment_submit") |> click()

        check_failure()
      end

      test "invalid postal in the form yields a failure message", _meta do
        url = page_url(StbernardWeb.Endpoint, :index)
        navigate_to(url)

        # retrieve form elements
        form = find_element(:id, "payment_form")
        fill_in_valid_form(form)
        :timer.sleep(1000)

        # refill with invalid value
        find_within_element(form, :id, "payment_postal") |> fill_field(Enum.random(C.invalid_postals()))
        find_within_element(form, :id, "payment_submit") |> click()

        check_failure()
      end

      test "invalid account in the form yields a failure message", _meta do
        url = page_url(StbernardWeb.Endpoint, :index)
        navigate_to(url)

        # retrieve form elements
        form = find_element(:id, "payment_form")
        fill_in_valid_form(form)
        :timer.sleep(1000)

        # refill with invalid value
        find_within_element(form, :id, "payment_account") |> fill_field(Enum.random(C.invalid_accounts()))
        find_within_element(form, :id, "payment_submit") |> click()

        check_failure()
      end

      test "invalid cvv in the form yields a failure message", _meta do
        url = page_url(StbernardWeb.Endpoint, :index)
        navigate_to(url)

        # retrieve form elements
        form = find_element(:id, "payment_form")
        fill_in_valid_form(form)
        :timer.sleep(1000)

        # refill with invalid value
        find_within_element(form, :id, "payment_cvv") |> fill_field(Enum.random(C.invalid_cvvs()))
        find_within_element(form, :id, "payment_submit") |> click()

        check_failure()
      end

      test "invalid amount in the form yields a failure message", _meta do
        url = page_url(StbernardWeb.Endpoint, :index)
        navigate_to(url)

        # retrieve form elements
        form = find_element(:id, "payment_form")
        fill_in_valid_form(form)
        :timer.sleep(1000)

        # refill with invalid value
        find_within_element(form, :id, "payment_amount") |> fill_field(Enum.random(C.invalid_amounts()))
        find_within_element(form, :id, "payment_submit") |> click()

        check_failure()
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
      name |> fill_field(Enum.random(C.valid_names()))
      postal |> fill_field(Enum.random(C.valid_postals()))
      account |> fill_field(Enum.random(C.valid_accounts()))
      cvv |> fill_field(Enum.random(C.valid_cvvs()))
      amount |> fill_field(Enum.random(C.valid_amounts()))

      execute_script("document.getElementById(\"payment_exp_year\").value = \"#{Enum.random(C.years())}\"")
      execute_script("document.getElementById(\"payment_exp_month\").value = \"#{Enum.random(C.months())}\"")
    end

    defp check_failure do
      # new page is loaded so it must be retrieved again
      submitted_form = find_element(:id, "payment_form")
      alert = find_within_element(submitted_form, :id, "alert")
      assert element_displayed?({:id, "alert"})
      assert inner_html(alert) == C.failure()
    end
end


