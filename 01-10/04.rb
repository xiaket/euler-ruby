# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       04.rb
# Date created:   2016-08-06 15:19
# Last modified:  2016-08-06 16:02
#
# Description:
#
require 'prime'

def factors_of(number)
  # taken from this SO answer, with my modifications.
  # http://stackoverflow.com/questions/3398159/all-factors-of-a-given-number
  primes, powers = number.prime_division.transpose
  exponents = powers.map{|i| (0..i).to_a}
  divisors = exponents.shift.product(*exponents).map do |powers|
    primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
  end
  divisors = divisors.find_all{|i| i < number ** 0.5 and i > 100}
  divisors.sort.map{|div| [div, number / div] }
end

def is_product_of_2_three_digit_number(number)
  factors_of(number).each do |i, j|
    if i < 1000 and j < 1000
      puts "#{i}, #{j}"
      return true
    end
  end
  return false
end

999.downto(100).each do |i|
  number = i.to_s.reverse.to_i + 1000 * i
  if is_product_of_2_three_digit_number(number)
    puts number
    break
  end
end
