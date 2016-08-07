# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       21.rb
# Date created:   2016-08-07 18:38
# Last modified:  2016-08-07 18:49
#
# Description:
#

require 'prime'


def sum_of_factors(number)
  # taken from this SO answer, with my modifications.
  # http://stackoverflow.com/questions/3398159/all-factors-of-a-given-number
  primes, powers = number.prime_division.transpose
  exponents = powers.map{|i| (0..i).to_a}
  divisors = exponents.shift.product(*exponents).map do |powers|
    primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
  end
  return divisors.find_all{|i| i < number }.inject(:+)
end


cache = {}
(2..10000).each do |number|
  cache[number] = sum_of_factors(number)
end

sum = 0
cache.each do |key, value|
  if cache.include?(value) and cache[value] == key and key != value
    sum += key
  end
end

puts sum
