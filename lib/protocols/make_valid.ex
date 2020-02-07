defprotocol MakeValid do
  @doc """
  We only deal with positive numbers here
  """
  def number(data)
end

defimpl MakeValid, for: BitString do
  def number(""), do: 0
  def number(data), do: MakeValid.number(Integer.parse(data))
end

defimpl MakeValid, for: Atom do
  def number(nil), do: 0
  def number(:error), do: 0
  def number(data), do: MakeValid.number(Atom.to_string(data))
end

defimpl MakeValid, for: Integer do
  def number(data) when data < 0, do: 0
  def number(data), do: data
end

defimpl MakeValid, for: Float do
  def number(data), do: trunc(data)
end

defimpl MakeValid, for: Tuple do
  def number({data, ""}), do: data
  def number({data, decimal}) do
    Integer.to_string(data)<>decimal |> Float.parse |> Tuple.to_list |> Enum.at(0) |> MakeValid.number
  end
end

defimpl MakeValid, for: List do
  def number(data) do
    data |> Enum.map(fn n -> MakeValid.number(n) end)
  end
end

