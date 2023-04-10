def credit_card_checker_enhanced(number)
  number.delete!(' ')
  # after Luhn: check the match and also check the validity of luhn sum 
  if number =~ /^\d{16}$/ && valid_luhn?(number)
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
  numbers = number.delete(" ").chars.map { |char| char.to_i }
  # store my sum
  sum = 0
  # iterate over the numbers array (with an index)
  numbers.each_with_index do |number, index|
    # if the index is even then we double them (and use % 9 ) and add to the sum
    # if not we keep the number as it is and add to the sum
	  sum += index.even? ? number * 2 % 9 : number
  end
  # p sum
  # check if the remainder is 0
	sum % 10 == 0
  # call this method in the credit_card_checker method
end
