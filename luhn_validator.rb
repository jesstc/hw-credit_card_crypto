# frozen_string_literal: true

# Validates credit card number using Luhn Algorithm
# arguments: none
# assumes: a local String called 'number' exists
# returns: true/false whether last digit is correct
module LuhnValidator
  def validate_checksum
    nums_a = number.to_s.chars.map(&:to_i)

    # TODO: use the integers in nums_a to validate its last check digit
    check_digit = nums_a.pop
    nums_even = nums_a.select.with_index { |_, i| i.even? }.map { |i| (i * 2) / 10 + (i * 2) % 10 }.reduce(&:+)
    nums_odd = nums_a.select.with_index { |_, i| i.odd? }.reduce(&:+)
    # puts nums_even 
    # puts nums_odd
    ((nums_even + nums_odd) * 9 % 10) == check_digit
  end
end
