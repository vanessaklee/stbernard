defmodule StbernardWeb.WelcomeTest do
    @moduledoc """
    Tests for the landing page.
    """
    use ExUnit.Case
    use Hound.Helpers
    import StbernardWeb.Router.Helpers
    import Stbernard.Constants
  
    hound_session()

    @doc """
    Page title should be present on landing page
    """
    describe "landing" do
        test "landing page loads correctly", _meta do
            # point browser to the page
            url = page_url(StbernardWeb.Endpoint, :index)
            navigate_to(url)

            # page title should be correct
            assert page_title() =~ "St. Bernard"

            # welcome message should be visible 
            element = find_element(:id, "welcome")
            text = visible_text(element)
            assert text == Constants.welcome_message
        end
    end
end