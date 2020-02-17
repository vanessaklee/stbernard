defmodule StbernardWeb.LonestarSimpleTest do
  @moduledoc """
  Tests for the landing page.
  """
  use ExUnit.Case

  @doc """
  Page title should be present on landing page
  """
  @tag lonestar1: true
  describe "landing" do
    test "landing page loads correctly", _meta do

      # HOUND
      Hound.start_session()
      Hound.Helpers.Navigation.navigate_to("/")
      assert Hound.Helpers.Page.page_title() == "St. Bernard Payments"
      Hound.end_session()

      # WALLABY
      {:ok, session} = Wallaby.start_session()
      Wallaby.Browser.visit(session, "/")
      assert Wallaby.Browser.page_title(session) == "St. Bernard Payments"
    end
  end
end
