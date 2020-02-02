defmodule StbernardWeb.Names do
  alias Stbernard.Constants, as: C

  @doc """
  Functions to handle the big list of naughty strings
  """
  def all_lower_case?(char) when char == " ", do: true
  def all_lower_case?(char), do: String.match?(char, ~r/^[a-z]$/)
  def prep_string(string) when is_nil(string), do: ""
  def prep_string(string), do: string |> String.trim() |> String.downcase()
  def valid_letters(string) do
    case String.valid?(string) && string not in C.bad_strings do
      true -> string
        |> prep_string()
        |> String.graphemes()
        |> Enum.all?(&all_lower_case?/1)
      false -> false
    end
  end
  def valid_name?(name) do
    # StbernardWeb.Payment.valid_string(name)
    valid_letters(name) &&
      String.valid?(name) &&
      String.length(name) <= C.name_max_length() &&
      String.length(name) >= C.name_min_length() &&
      name not in C.bad_strings
  end

end
