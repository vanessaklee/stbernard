defmodule StbernardWeb.Wallaby do
  @moduledoc """
  Wallaby tests
  """
  use Wallaby.DSL
  import Wallaby.Query
  import Wallaby.Element
  import Wallaby.Browser
  import StbernardWeb.Router.Helpers
  alias Stbernard.Constants, as: C

  def start_sess(metadata) do
    {:ok, session} = Wallaby.start_session(metadata: metadata)
    session
  end

  def start(session), do: fill_in_valid_form(session)

  def fill_in_valid_form(session) do
    session
    |> visit("/")
    |> fill_in(Query.text_field("payment_name"), with: Enum.random(C.valid_names()))
    |> fill_in(Query.text_field("payment_postal"), with: Enum.random(C.valid_postals()))
    |> fill_in(Query.text_field("payment_account"), with: Enum.random(C.valid_accounts()))
    |> fill_in(Query.text_field("payment_account"), with: Enum.random(C.valid_accounts()))
    |> fill_in(Query.text_field("payment_cvv"), with: Enum.random(C.valid_cvvs()))
    |> fill_in(Query.text_field("payment_amount"), with: Enum.random(C.valid_amounts()))
    |> fill_in(Query.select("payment_exp_year"), with: Enum.random(C.years()))
    |> fill_in(Query.select("payment_exp_month"), with: Enum.random(C.months()))
  end

  def assert_alert(alert), do: Query.visible?(Query.css(".alert"))

  def fetch_alert(session), do: find(session, Query.css(".alert"))

  def elem_text(elem), do: Element.text(elem)

  def swap_single_field(session, field, new_value) do
    session
    |> fill_in(Query.text_field(field), with: new_value)
    |> Browser.click(Query.button("payment_submit"))
  end
end
