# define the method with a string as a parameter
# remove all the white spaces from the string
# find a working regular expression
# compare the string with the regular expression
# if it matches say that its valid 
#　if not, say its invalid
# check the first index of number to see if it:s a 4 or 5
# if it's a 4 it's a visa if it's a 5 it's mastercard

def credit_card_checker(number)
  number.delete!(' ')
  if number =~ /^\d{16}$/
    case number[0]
    when "4" then "Valid Visa credit card number"
    when "5" then "Valid Mastercard credit card number"
    end
  else
    return "Invalid credit card number"
  end
end

# before refactoring to case from line 13
# if number[0] == "4"
#   return "Valid Visa credit card number"
# else
#   return "Valid Mastercard credit card number"
# end
