defmodule StbernardWeb.Hound do
  @moduledoc """
  Hound tests
  """
  use Hound.Helpers
  alias Stbernard.Constants, as: C

  def start() do
    start_sess()
    fill_in_valid_form()
  end

  # def start_sess("headless"), do:  Hound.start_session(browser: "chrome_headless")
  def start_sess(), do:  Hound.start_session()

  def start_sess_fill_in_valid_form() do
    Hound.start_session()
    fill_in_valid_form()
  end

  def start_new_sess(sess_name) do
    change_session_to(sess_name)
    fill_in_valid_form()
  end

  def end_sess(pid), do: Hound.end_session(pid)
  def end_sess(), do: Hound.end_session

  def fill_in_valid_form(nav \\ true) do
    if nav, do: navigate_to("/")
    find_element(:id, "payment_name") |> fill_field(Enum.random(C.valid_names()))
    find_element(:id, "payment_postal") |> fill_field(Enum.random(C.valid_postals()))
    find_element(:id, "payment_account") |> fill_field(Enum.random(C.valid_accounts()))
    find_element(:id, "payment_cvv") |> fill_field(Enum.random(C.valid_cvvs()))
    find_element(:id, "payment_amount") |> fill_field(Enum.random(C.valid_amounts()))
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
    submit()
  end

  def submit(), do: find_element(:id, "payment_submit") |> click()

  def assert_alert(alert), do: element_displayed?(alert)

  def get_inner_html(elem), do: inner_html(elem)

  @doc """
  Take a screenshot
  """
  def ss(name) do
    take_screenshot("test/stbernard_web/integration/screenshots/#{name}" <> DateTime.to_string(DateTime.utc_now) <> ".png")
  end
end
