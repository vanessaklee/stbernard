defmodule StbernardWeb.Payment do
  @moduledoc """
  Models a payment

  ## Validations

  See Constants file for functions leading to messages

  Cannot be blank - C.blank()
      - [:name, :postal, :account, :cvv, :amount], C.blank()
  Length
      - :name, min: C.name_min_length(), max: C.name_max_length()
      - :postal, C.postal_length()
      - :account, min: C.account_min_length(),  max: C.account_max_length()
      - :cvv, min: C.cvv_min_length(), max: C.cvv_max_length()
  Expired
      - :exp_year
      - :exp_month
  Invalid
      - :amount not greater than 0, C.invalid()

  """
  use Ecto.Schema
  import Ecto.Changeset
  alias Stbernard.Constants, as: C

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
          |> validate_length(:name, min: C.name_min_length(), max: C.name_max_length())
          |> validate_required([:name, :postal, :account, :cvv, :amount], [message: C.blank()])
          |> validate_length(:postal, min: 0, max: C.postal_length())
          |> validate_string(:name)
          |> validate_account(:account)
          |> validate_cvv(:cvv)
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
          true -> Ecto.Changeset.add_error(changeset, :exp_year, C.expired())
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
              true -> Ecto.Changeset.add_error(changeset, :exp_month, C.expired())
              false -> changeset
          end
      rescue _e -> Ecto.Changeset.add_error(changeset, :exp_month, C.invalid())
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

  def validate_amount(changeset, _field) do
      case MakeValid.number(Ecto.Changeset.get_field(changeset, :amount)) > 0 do
          true -> changeset
          false -> Ecto.Changeset.add_error(changeset, :amount, C.invalid())
      end
  end


  @doc """
  Validate cvv2
  """
  def validate_cvv(changeset, _field) do
      cvv = MakeValid.number(Ecto.Changeset.get_field(changeset, :cvv))
      case is_valid_cvv?(cvv) do
          true -> changeset
          false -> Ecto.Changeset.add_error(changeset, :cvv, C.invalid())
      end
  end

  def is_valid_cvv?(cvv) when is_integer(cvv) do
      min = C.cvv_min_length()
      max = C.cvv_max_length()
      len = length(Integer.to_charlist(cvv))

      cvv > 0 && (len >= min and len <= max)
  end
  def is_valid_cvv?(_), do: false

  def validate_account(changeset, _field) do
      case valid_account_length(Ecto.Changeset.get_field(changeset, :account)) do
          true -> changeset
          false -> Ecto.Changeset.add_error(changeset, :account, C.invalid())
      end
  end
  def valid_account_length(nil), do: false
  def valid_account_length(""), do: false
  def valid_account_length(account) do
    len = String.length(account)
    len >= C.account_min_length() and len <= C.account_max_length()
  end

  def validate_string(changeset, field), do: valid_string(Ecto.Changeset.get_field(changeset, field), changeset, field)

  def valid_string(string, changeset, field) when is_nil(string) do
      Ecto.Changeset.add_error(changeset, field, C.illegal())
  end
  def valid_string(string, changeset, field) do
    case valid_string(string) do
        true -> changeset
        false -> Ecto.Changeset.add_error(changeset, field, C.illegal())
    end
  end
  def valid_string(string) do
      valid_letters =
          string
              |> String.trim()
              |> String.downcase()
              |> String.graphemes()
              |> Enum.all?(&valid_name_char?/1)
      String.valid?(string) && valid_letters && string not in C.bad_strings
  end

  @doc """
  Valid name chars are
  - a letter between a - z
  - a letter between A - Z
  - an allowed special character such as -, ', or " " (hyphen, apostrophe, space)
  """
  def valid_name_char?(c) when c == " ", do: true
  def valid_name_char?(c) do
      case c do
          <<c::utf8>> when c in ?a..?z -> true
          _ -> false
      end
  end
end
