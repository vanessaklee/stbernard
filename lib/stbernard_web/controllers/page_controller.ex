defmodule StbernardWeb.PageController do
    use StbernardWeb, :controller

    alias StbernardWeb.Payment
    alias Stbernard.Constants

    @doc """
    Simple payment form
    """
    def index(conn, params) do
        changeset = Ecto.Changeset.cast(Payment.new(%{}), params, [:account])
        render_form(conn, changeset, params)
    end

    @doc """
    Payment form with autocomplete country
    """
    def index_ac(conn, params) do
        changeset = Payment.new(%{}) |> Payment.changeset()
        render_form(conn, changeset, params, "index_ac.html", Constants.countries)
    end

    @doc """
    Submission of payment form
    """
    def charge(conn, form_values) do
        params = Map.get(form_values, "payment")
        changeset = Payment.new(params) |> Payment.changeset(params)

        case changeset.valid? do
            true ->
                render_form(conn, changeset |> Map.put(:action, "success"), %{})
            false ->
                render_form(conn, changeset |> Map.put(:action, "error"), params)
        end
    end

    @doc """
    Render the form
    """
    def render_form(conn, changeset, params, template \\ "index.html", countries \\ []) do
        conn
           |> assign(:changeset, changeset)
           |> render(template, token: Plug.CSRFProtection.get_csrf_token(), cards: Constants.cards, years: Constants.years, months: Constants.months, name: params["name"], postal: params["postal"], amount: params["amount"], title: Constants.welcome_message, countries: countries, success: Constants.success, failure: Constants.failure, changeset: changeset, conn: conn)
    end
end
