defmodule StbernardWeb.Generators do
  @moduledoc """
  Custom generators
  """

  def cvv_generator(:good) do
    StreamData.bind(StreamData.list_of(StreamData.integer(100..9999), min_length: 25), fn list ->
      StreamData.bind(StreamData.member_of(list), fn elem -> StreamData.constant({:good, elem}) end)
    end)
  end
  def cvv_generator(:bad) do
    StreamData.bind(StreamData.list_of(StreamData.integer(-9..999_999), min_length: 350), fn list ->
      new_list = Enum.filter(list, fn x -> x < 100 || x > 9999 end)
      StreamData.bind(StreamData.member_of(new_list), fn elem ->
          StreamData.constant({:bad, elem})
      end)
    end)
  end

end
