defmodule StbernardWeb.LonestarSimpleformTest do
  @moduledoc """
  Tests for the landing page.
  """
  use ExUnit.Case
  use Hound.Helpers
  use Wallaby.DSL
  import Wallaby.Browser
  import StbernardWeb.Router.Helpers
  alias Stbernard.Constants, as: C

  @doc """
  Page title should be present on landing page
  """
  @tag lonestar2: true
  describe "landing" do
    test "Form filled with valid data succeeds", _meta do
      # HOUND
      Hound.start_session()
      navigate_to(page_url(StbernardWeb.Endpoint, :index))
      find_element(:id, "payment_name") |> fill_field(Enum.random(C.valid_names()))
      find_element(:id, "payment_postal") |> fill_field(Enum.random(C.valid_postals()))
      find_element(:id, "payment_account") |> fill_field(Enum.random(C.valid_accounts()))
      find_element(:id, "payment_cvv") |> fill_field(Enum.random(C.valid_cvvs()))
      find_element(:id, "payment_amount") |> fill_field(Enum.random(C.valid_amounts()))
      execute_script("document.getElementById(\"payment_exp_year\").value = \"#{Enum.random(C.years())}\"")
      execute_script("document.getElementById(\"payment_exp_month\").value = \"#{Enum.random(C.months())}\"")
      find_element(:id, "payment_submit") |> click()
      assert inner_html(find_element(:id, "alert")) == C.success()
      Hound.end_session()

      # WALLABY
      {:ok, session} = Wallaby.start_session()
      session
      |> visit("/")
      |> fill_in(Query.text_field("payment_name"), with: Enum.random(C.valid_names()))
      |> fill_in(Query.text_field("payment_postal"), with: Enum.random(C.valid_postals()))
      |> fill_in(Query.text_field("payment_account"), with: Enum.random(C.valid_accounts()))
      |> fill_in(Query.text_field("payment_cvv"), with: Enum.random(C.valid_cvvs()))
      |> fill_in(Query.text_field("payment_amount"), with: Enum.random(C.valid_amounts()))
      |> fill_in(Query.select("payment_exp_year"), with: Enum.random(C.years()))
      |> fill_in(Query.select("payment_exp_month"), with: Enum.random(C.months()))
      |> Browser.click(Query.button("payment_submit"))
      |> assert_text(Query.css(".alert"), C.success())
    end
  end
end
