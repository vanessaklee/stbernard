defmodule StbernardWeb.WelcomeTest do
    @moduledoc """
    Tests for the landing page.
    """
    use ExUnit.Case
    use Hound.Helpers
    import StbernardWeb.Router.Helpers
    alias Stbernard.Constants
  
    hound_session()

    @doc """
    Page title should be present on landing page
    """
    describe "landing" do
        test "landing page loads correctly", _meta do
            url = page_url(StbernardWeb.Endpoint, :index)
            navigate_to(url)

            element = find_element(:id, "welcome")
            text = visible_text(element)

            assert page_title() =~ "St. Bernard"
            assert text == Constants.title
        end
    end

end