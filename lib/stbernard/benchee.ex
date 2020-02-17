defmodule Stbernard.Benchee do
  @moduledoc """
  Load saved benchmarks
  """

  def load_one, do: Benchee.run(%{}, load: [
    "benchee_output/one/one.benchee"
  ])

  def load_all, do: Benchee.run(%{}, load: [
    "benchee_output/all/all.benchee"
  ])

  def load_one_and_all, do: Benchee.run(%{}, load: [
    "benchee_output/one/one.benchee",
    "benchee_output/all/all.benchee"
  ])
end
