defmodule Stbernard.Constants do
  @moduledoc """
  Reused values
  """

  # LISTS
  # @cards ["": "", "Visa": "VISA", "MasterCard": "MASTERCARD", "Amex": "AMEX", "Diners": "DINERS", "Discover": "DISCOVER"]
  @cards ["": "", "Visa": "VISA", "MasterCard": "MASTERCARD", "Delta Debit": "DELTA", "Electron Debit": "UKE", "MasterCard Debit": "MC", "Visa Debit": "VISA"]

  # ERROR MESSAGES
  @missing_name_error "Enter your name. "


  ################## Functions ################## 

  # RETURN LIST
  def cards, do: @cards

  # RETURN ERROR
  def missing_name_error, do: @missing_name_error

end

