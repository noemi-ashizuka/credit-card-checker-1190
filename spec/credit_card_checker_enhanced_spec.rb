# 16 digits
# 4242 4242 4242 4242 OR 42424242424242
# string
require_relative '../credit_card_checker_enhanced'

describe "#credit_card_checker_enhanced" do
  it "returns 'Invalid credit card number' when passed an empty string" do
    actual = credit_card_checker_enhanced("")
    expected = "Invalid credit card number"
    expect(actual).to eq(expected)
  end

  it "returns 'Invalid credit card number' when passed a string with a special character" do
    actual = credit_card_checker_enhanced("4242 4242 4?42 4242")
    expected = "Invalid credit card number"
    expect(actual).to eq(expected)
  end

  it "returns 'Valid Visa credit card number' when passed a string with a valid number in groups of 4" do
    actual = credit_card_checker_enhanced("4242 4242 4242 4242")
    expected = "Valid Visa credit card number"
    expect(actual).to eq(expected)
  end

  it "returns 'Valid Visa credit card number' when passed a string with a valid number with different format" do
    actual = credit_card_checker_enhanced("4242424242424242")
    expected = "Valid Visa credit card number"
    expect(actual).to eq(expected)
  end

  it "returns 'Valid Mastercard credit card number' when passed a string with a valid number with different format" do
    actual = credit_card_checker_enhanced("5555 5555 5555 4444")
    expected = "Valid Mastercard credit card number"
    expect(actual).to eq(expected)
  end

  it "returns 'Invalid credit card number' when passed a string with an invalid luhn sum" do
    actual = credit_card_checker_enhanced("4242424242424241")
    expected = "Invalid credit card number"
    expect(actual).to eq(expected)
  end

  # it "returns 'Invalid credit card number' when passed a string with an invalid luhn sum" do
  #   actual = credit_card_checker_enhanced("555555555 5555 555555")
  #   expected = "Invalid credit card number"
  #   expect(actual).to eq(expected)
  # end
end
