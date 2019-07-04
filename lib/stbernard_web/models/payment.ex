defmodule StbernardWeb.Payment do
    use Ecto.Schema
    import Ecto.Changeset

    embedded_schema do
        field :cardholders_full_name
        field :postal_code
        field :type_of_card
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
        p = %StbernardWeb.Payment{
            :cardholders_full_name=>payment[:cardholders_full_name], 
            :postal_code=>payment[:postal_code],
            :type_of_card=>payment[:type_of_card],
            :account=>payment[:account],
            :cvv=>payment[:cvv],
            :exp_month=>payment[:exp_month],
            :exp_year=>payment[:exp_year],
            :amount=>payment[:amount],
            :error=>error,
        }
        p
    end

    @doc """
    Changeset for payments

    ## Parameters

    - payment: Struct %Payment{}
    - params: Map

    ## Examples

      iex> payment = %StbernardWeb.Payment{account: "4929000000006", amount: "2", cardholders_full_name: "Jane Doe", cvv: "123", exp_year: 2030, postal_code: "78757", type_of_card: "VISA", exp_month: "10"}
      iex> cs = StbernardWeb.Payment.changeset(payment)
      iex> cs.valid?
      true
    """
    def changeset(%StbernardWeb.Payment{} = payment \\ %StbernardWeb.Payment{}, params \\ %{}) do
        required = [:cardholders_full_name, :postal_code, :type_of_card, :account, :cvv, :exp_year, :exp_month, :amount]
        payment
            |> cast(params, [:cardholders_full_name, :postal_code, :type_of_card, :account, :cvv, :exp_year, :exp_month, :amount, :error])
            |> validate_required(required)
            |> validate_length(:cardholders_full_name, min: 0, max: 50)
            |> validate_length(:postal_code, min: 0, max: 18)
            |> validate_length(:account, min: 0, max: 19)
            |> validate_length(:cvv, min: 2, max: 4)
            |> validate_expiry(:exp_year, :exp_month)
            # |> validate_number(:amount, greater_than: 0)
    end

    @doc """
    Deterimines if expiry is expired.

    ## Parameters

    - changeset 
    - expiry year
    - expiry month

    ## Return

    - boolean true or false 

    ## Examples
    """
    def validate_expiry(changeset, year, month) when is_integer(year) and is_integer(month) do
        try do
            IO.inspect year
            year_now = DateTime.utc_now.year

            case year_now > year do
                true -> Ecto.Changeset.add_error(changeset, :exp_year, "expired ") 
                false -> 
                    month_now = DateTime.utc_now.month
                    case month <= month_now do
                        true -> Ecto.Changeset.add_error(changeset, :exp_month, "expired ") 
                        false -> changeset
                    end
            end
        rescue _e -> Ecto.Changeset.add_error(changeset, :exp_year, "invalid ")
        end
    end
    def validate_expiry(changeset, year, month) when is_integer(year) do
        validate_expiry(changeset, year, String.to_integer(month))
    end
    def validate_expiry(changeset, year, month) when is_integer(month) do
        validate_expiry(changeset, String.to_integer(year), month)
    end
    def validate_expiry(changeset, year, month) when is_binary(year) and is_binary(month) do
        validate_expiry(changeset, String.to_integer(year), String.to_integer(month))
    end
    def validate_expiry(changeset, year, month) do
        validate_expiry(changeset, 0, 0)
    end
end
