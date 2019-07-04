defmodule StbernardWeb.PageController do
  use StbernardWeb, :controller

  alias StbernardWeb.Payment
  import Stbernard.Constants

  def index(conn, params) do
    changeset = Payment.new(%{}) |> Payment.changeset()
    years = DateTime.utc_now.year..DateTime.utc_now.year+25
    this_month = DateTime.utc_now.month

    conn
      |> assign(:changeset, changeset)
      |> render("index.html", token: Plug.CSRFProtection.get_csrf_token(), cards: @cards, years: years, this_month: this_month, cardholders_full_name: params[:cardholders_full_name], postal_code: params[:postal_code], amount: params[:amount], changeset: changeset, conn: conn)
  end

  def charge(conn, _params) do
    render(conn, "result.html")
  end

end
