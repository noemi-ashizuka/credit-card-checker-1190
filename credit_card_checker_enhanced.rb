def credit_card_checker_enhanced(number)
  number.delete!(' ')
  if number =~ /^\d{16}$/
    case number[0]
    when "4" then "Valid Visa credit card number"
    when "5" then "Valid Mastercard credit card number"
    end
    # if number[0] == "4"
    #   return "Valid Visa credit card number"
    # else
    #   return "Valid Mastercard credit card number"
    # end
  else
    return "Invalid credit card number"
  end
end

def valid_luhn?(number)
  # iterate over the number and change each character into an integer => array
  # store my sum
  # iterate over the numbers array (with an index)
  # if the index is even then we double them (and use % 9 ) and add to the sum
  # if not we keep the number as it is and add to the sum
  # check if the remainder is 0
end
