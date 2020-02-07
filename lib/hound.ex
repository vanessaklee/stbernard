defmodule StbernardWeb.Hound do
  @moduledoc """
  Hound tests
  """
  use Hound.Helpers
  import StbernardWeb.Router.Helpers
  alias Stbernard.Constants, as: C

  def start(browser \\ nil) do
    start_sess(browser)
    fill_in_valid_form()
  end

  def start_sess(:headless), do:  Hound.start_session(browser: "chrome_headless")
  def start_sess(_), do:  Hound.start_session()

  def start_new_sess(sess_name) do
    change_session_to(sess_name)
    fill_in_valid_form()
  end

  def end_sess(pid), do: Hound.end_session(pid)
  def end_sess(), do: Hound.end_session

  def fill_in_valid_form() do
    navigate_to(page_url(StbernardWeb.Endpoint, :index))
    form = find_element(:id, "payment_form")
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

  def fetch_alert(), do: find_element(:id, "alert")

  def swap_single_field(field, new_value) do
    try do
      find_element(:id, field) |> fill_field(new_value)
    rescue _e ->
      # ChromeDriver only supports characters in the BMP
      nil
    end
    find_element(:id, "payment_submit") |> click()
    :timer.sleep(500)
  end

  def assert_alert(alert), do: element_displayed?(alert)

  def get_inner_html(elem), do: inner_html(elem)

  @doc """
  Take a screenshot
  """
  def ss(name) do
    take_screenshot("test/stbernard_web/integration/screenshots/#{name}" <> DateTime.to_string(DateTime.utc_now) <> ".png")
  end
end
