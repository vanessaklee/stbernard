defmodule StbernardWeb.PropertyBasedFormTest do
    @moduledoc """
    Tests for the form submission.

    ## Errors to check

    Cannot be blank - Constants.blank()
        - [:name, :postal, :account, :cvv, :amount], Constants.blank()
    Length
        - :name, Constants.name_length()
        - :postal, Constants.postal_length()
        - :account, Constants.account_min_length(),  max: Constants.account_max_length()
        - :cvv, min: Constants.cvv_min_length(), max: Constants.cvv_max_length()
    Expired
        - :exp_year
        - :exp_month
    Invalid
        - :exp_month not a number, Constants.invalid()
        - :amount not greater than 0, Constants.invalid()
    """
    use ExUnit.Case
    use Hound.Helpers

    # Property-based testing generators
    use ExUnitProperties

    import StbernardWeb.Router.Helpers
    alias Stbernard.Constants

    @moduletag timeout: 120000

    # globals
    @valid_names ["Marie Curie", "Jane Austen", "Willy Nelson"]

    @valid_postals ["75005", "GU34 1SD", "78704"]

    @valid_accounts [378282246310005, 6011111111111117, 4111111111111111]

    @valid_cvvs ["123", "1234"]

    @valid_amounts [1, 10.00, 1234]

    @doc """
    User property-based testing to test that the amount succeeds if it is greater than 0, fails if not
    """
    property "amount succeeds if it is greater than 0 fails if not" do
        Hound.start_session
        url = page_url(StbernardWeb.Endpoint, :index)
        navigate_to(url)

        check all gen_amt <- StreamData.integer() do
            form = find_element(:id, "payment_form")
            fill_in_valid_form(form)
            find_within_element(form, :id, "payment_amount") |> fill_field(gen_amt)
            find_within_element(form, :id, "payment_submit") |> click()

            submitted_form = find_element(:id, "payment_form")
            alert = find_within_element(submitted_form, :id, "alert")
            assert element_displayed?({:id, "alert"})

            case gen_amt do
                a when a > 0 -> assert inner_html(alert) == Constants.success()
                _ -> assert inner_html(alert) == Constants.failure()
            end
        end
        Hound.end_session
    end

    @doc """
    User property-based testing to test that the name is valid if it is a valid string
    """
    property "name is valid if it is a valid string" do
        Hound.start_session(browser: "chrome_headless")

        url = page_url(StbernardWeb.Endpoint, :index)
        navigate_to(url)
        
        data = "./test/showpony_blns.txt" |> File.stream! |> Stream.map( &(String.replace(&1, "\n", "")) )  |> Stream.map( &(String.trim(&1)) ) 
        check all gen_name <- StreamData.member_of(data), max_runs: 60 do

            form = find_element(:id, "payment_form")
            fill_in_valid_form(form)
            try do
                find_within_element(form, :id, "payment_name") |> fill_field(gen_name)
            rescue e -> IO.puts("An ExUnitProperties.Error occurred: " <> e.message)
            end
            find_element(:id, "payment_submit") |> click()

            submitted_form = find_element(:id, "payment_form")
            alert = find_within_element(submitted_form, :id, "alert")
            assert element_displayed?({:id, "alert"})

            valid_letters = 
                case String.valid?(gen_name) && gen_name not in Constants.bad_strings do
                    true -> gen_name
                            |> IO.inspect
                            |> StbernardWeb.PropertyBasedFormTest.prep_string()
                            |> String.graphemes()  
                            |> Enum.all?(&StbernardWeb.PropertyBasedFormTest.all_lower_case?/1)
                    false -> false
                end

            valid = valid_letters && String.valid?(gen_name) && 
                String.length(gen_name) <= Constants.name_max_length() && String.length(gen_name) >= Constants.name_min_length()  

            case valid do
                true -> assert inner_html(alert) == Constants.success()
                _ -> assert inner_html(alert) == Constants.failure()
            end
        end
        Hound.end_session
    end

    @doc """
    User property-based testing to test that the cvv succeeds 

    Define the property as simply & specfically as possible
    """
    property "cvv succeeds cvv >= ccv min length & cvv <= cvv max length" do
        require Integer
        Hound.start_session
        url = page_url(StbernardWeb.Endpoint, :index)
        navigate_to(url)

        good_cvv_generator =
            StreamData.bind(StreamData.list_of(StreamData.integer(100..9999), min_length: 25), fn list ->
                StreamData.bind(StreamData.member_of(list), fn elem ->
                    StreamData.constant({:good, elem})
                end)
          end)

        # IO.inspect Enum.take(good_cvv_generator, 25)

        bad_cvv_generator = 
            StreamData.bind(StreamData.list_of(StreamData.integer(-9..999999), min_length: 350), fn list ->
                new_list = Enum.filter(list, fn x -> x < 100 || x >9999 end)
                StreamData.bind(StreamData.member_of(new_list), fn elem ->
                    StreamData.constant({:bad, elem})
                end)
          end)


        # IO.inspect Enum.take(bad_cvv_generator, 50)

        check all {good_or_bad, elem} <- StreamData.one_of([good_cvv_generator, bad_cvv_generator]), max_runs: 30 do # default is max_runs: 100 
            form = find_element(:id, "payment_form")
            fill_in_valid_form(form)
            find_within_element(form, :id, "payment_cvv") |> fill_field(elem)
            find_within_element(form, :id, "payment_submit") |> click()

            submitted_form = find_element(:id, "payment_form")
            alert = find_within_element(submitted_form, :id, "alert")

            case good_or_bad do
                :good -> assert inner_html(alert) == Constants.success()
                :bad -> assert inner_html(alert) == Constants.failure()
            end
        end
        Hound.end_session

        # REPLACED BY ABOVE USE OF BINDINGS
        # check all generated <- StreamData.integer(), max_runs: 25 do # default is max_runs: 100 
        #     min = Constants.cvv_min_length 
        #     max = Constants.cvv_max_length

        #     form = find_element(:id, "payment_form")
        #     fill_in_valid_form(form)
        #     find_within_element(form, :id, "payment_cvv") |> fill_field(generated)
        #     find_within_element(form, :id, "payment_submit") |> click()

        #     submitted_form = find_element(:id, "payment_form")
        #     alert = find_within_element(submitted_form, :id, "alert")

        #     # don't replicate system method uses Kernel & parse; use Kernel & digits here
        #     case length(Integer.digits(generated)) do
        #         cvv when is_integer(cvv) and cvv >= min and cvv <= max -> assert inner_html(alert) == Constants.success()
        #         _ -> assert inner_html(alert) == Constants.failure()
        #     end
        # end
    end

    @doc """
    User property-based testing to test that the account succeeds 
    """
    property "account succeeds if it is not null and not more than account length min and max" do
        url = page_url(StbernardWeb.Endpoint, :index)
        navigate_to(url)
        Hound.start_session

        check all generated <- StreamData.integer() do
            min = Constants.account_min_length 
            max = Constants.account_max_length

            form = find_element(:id, "payment_form")
            fill_in_valid_form(form)
            find_within_element(form, :id, "payment_account") |> fill_field(generated)
            find_within_element(form, :id, "payment_submit") |> click()

            # new page is loaded so it must be retrieved again
            submitted_form = find_element(:id, "payment_form")
            alert = find_within_element(submitted_form, :id, "alert")
            assert element_displayed?({:id, "alert"})

            case String.length(Integer.to_string(generated)) do
                a when a >= min and a <= max -> assert inner_html(alert) == Constants.success()
                _ -> assert inner_html(alert) == Constants.failure()
            end
        end
        Hound.end_session
    end

    defp fill_in_valid_form(form) do
        # ID
        name = find_within_element(form, :id, "payment_name")
        postal = find_within_element(form, :id, "payment_postal")
        account = find_within_element(form, :id, "payment_account")

        # XPath
        cvv = find_element(:xpath, ~s|//*[@id="payment_cvv"]|)
        amount = find_element(:xpath, ~s|//*[@id="payment_amount"]|)
        
        # populate the form fields
        name |> fill_field(Enum.random(@valid_names))
        postal |> fill_field(Enum.random(@valid_postals))
        account |> fill_field(Enum.random(@valid_accounts))
        cvv |> fill_field(Enum.random(@valid_cvvs))
        amount |> fill_field(Enum.random(@valid_amounts))

        execute_script("document.getElementById(\"payment_exp_year\").value = \"#{Enum.random(Constants.years())}\"")
        execute_script("document.getElementById(\"payment_exp_month\").value = \"#{Enum.random(Constants.months())}\"")
    end

    def all_lower_case?(char) when char == " ", do: true
    def all_lower_case?(char), do: String.match?(char, ~r/^[a-z]$/)
    def prep_string(string) when is_nil(string), do: ""
    def prep_string(string), do: string |> String.trim() |> String.downcase()

end