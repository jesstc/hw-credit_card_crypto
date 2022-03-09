# frozen_string_literal: true

# Validates credit card number using Luhn Algorithm
# arguments: none
# assumes: a local String called 'number' exists
# returns: true/false whether last digit is correct
module LuhnValidator
  def validate_checksum
    nums_a = number.to_s.chars.map(&:to_i)

    # TODO: use the integers in nums_a to validate its last check digit
    check_digit = nums_a % 10
    (nums_a.to_s.chars.select.with_index { |_, i| i.odd? }.map(&:to_i).reduce(:+) * 9 % 10) == check_digit
  end
end
