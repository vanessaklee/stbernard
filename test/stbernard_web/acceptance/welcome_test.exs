defmodule StbernardWeb.WelcomeTest do
    @moduledoc """
    Tests for the landing page.
    """
    use ExUnit.Case
    use Hound.Helpers
    import StbernardWeb.Router.Helpers
    import Stbernard.Constants

    # The default endpoint for testing
    @endpoint StbernardWeb.Endpoint
  
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

            assert page_title() == "St. Bernard · the safe payment system"
            assert text == "Payment Information"
        end
    end

end