defmodule StbernardWeb.Payment do
    @moduledoc """
    Models a payment

    ## Validations
    
    See Constants file for functions leading to messages

    Cannot be blank - Constants.blank()
        - [:name, :postal, :account, :cvv, :amount], Constants.blank()
    Length
        - :name, Constants.name_length()
        - :postal, Constants.postal_length()
        - :account, Constants.account_length()
        - :cvv, min: Constants.cvv_min_length(), max: Constants.cvv_max_length()
    Expired
        - :exp_year
        - :exp_month
    Invalid
        - :amount not greater than 0, Constants.invalid()

    """
    use Ecto.Schema
    import Ecto.Changeset
    alias Stbernard.Constants

    embedded_schema do
        field :name
        field :postal
        field :account
        field :cvv
        field :exp_month
        field :exp_year
        field :amount
        field :error
    end

    @doc """
    New representation of the model

    ## Parameters

    - payment: Struct %Payment{}
    - error: String

    ## Examples

    TBD

    """
    def new(payment, error \\ nil) do
        %StbernardWeb.Payment{
            :name=>payment[:name], 
            :postal=>payment[:postal],
            :account=>payment[:account],
            :cvv=>payment[:cvv],
            :exp_month=>payment[:exp_month],
            :exp_year=>payment[:exp_year],
            :amount=>payment[:amount],
            :error=>error,
        }
    end

    @doc """
    Changeset for payments

    ## Parameters

    - payment: Struct %Payment{}
    - params: Map

    ## Examples

      iex> payment = %StbernardWeb.Payment{account: "4929000000006", amount: "2", name: "Jane Doe", cvv: "123", exp_year: 2030, postal: "78757", exp_month: "10"}
      iex> cs = StbernardWeb.Payment.changeset(payment)
      iex> cs.valid?
      true
    """
    def changeset(%StbernardWeb.Payment{} = payment \\ %StbernardWeb.Payment{}, params \\ %{}) do
        payment
            |> cast(params, [:name, :postal, :account, :cvv, :exp_year, :exp_month, :amount, :error])
            |> validate_required([:name, :postal, :account, :cvv, :amount], [message: Constants.blank()])
            |> validate_length(:name, min: 0, max: Constants.name_length())
            |> validate_length(:postal, min: 0, max: Constants.postal_length())
            |> validate_length(:account, min: 0, max: Constants.account_length())
            |> validate_length(:cvv, min: Constants.cvv_min_length(), max: Constants.cvv_max_length())
            |> validate_year(:exp_year)
            |> validate_year(:exp_month)
            |> validate_amount(:amount)
    end

    @doc """
    Deterimines if expiry year is valid (not expired).

    ## Parameters

    - changeset 
    - field String

    ## Return

    - boolean true or false 

    ## Examples
    """
    def validate_year(changeset, _field) do
        year = year(Ecto.Changeset.get_field(changeset, :exp_year))
        year_now = DateTime.utc_now.year

        case year_now > year do
            true -> Ecto.Changeset.add_error(changeset, :exp_year, Constants.expired()) 
            false -> changeset
        end
    end 

    @doc """
    Deterimines if expiry month is valid (not expired).

    ## Parameters

    - changeset 
    - field String

    ## Return

    - boolean true or false 

    ## Examples
    """
    def validate_month(changeset, _field) do
        try do
            year = year(Ecto.Changeset.get_field(changeset, :exp_year))
            year_now = DateTime.utc_now.year
            month = case Ecto.Changeset.get_field(changeset, :exp_month) do
                m when is_integer(m) -> m
                m -> String.to_integer(m)
            end
            month_now = DateTime.utc_now.month

            case expired(year_now, year, month_now, month) do
                true -> Ecto.Changeset.add_error(changeset, :exp_month, Constants.expired()) 
                false -> changeset
            end
        rescue _e -> Ecto.Changeset.add_error(changeset, :exp_month, Constants.invalid())
        end
    end

    def expired(year_now, year, month_now, month) do
        case year == year_now do
            true -> month <= month_now 
            false -> false
        end
    end

    defp year(y) when is_nil(y), do: DateTime.utc_now.year
    defp year(y) when is_integer(y), do: y
    defp year(y), do: String.to_integer(y)

    @doc """
    Deterimines if amount is greater than zero.

    ## Parameters

    - changeset 
    - field String

    ## Return

    - boolean true or false 

    ## Examples
    """
    def validate_amount(changeset, _field) do
        case amount(Ecto.Changeset.get_field(changeset, :amount)) > 0 do
            true -> changeset
            false -> Ecto.Changeset.add_error(changeset, :amount, Constants.invalid())
        end
    end
    defp amount(a) when is_nil(a), do: 0
    defp amount(a) when is_integer(a), do: a
    defp amount(a) when is_float(a), do: Kernel.trunc(a)
    defp amount(a) do
        case Integer.parse(a) do
            {w,l} when l == "" -> w
            _ -> 
                {w,l} = Float.parse(a)
                w
        end
    end
end
