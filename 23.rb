# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       23.rb
# Date created:   2016-08-07 20:08
# Last modified:  2016-08-07 22:05
#
# Description:
#

require 'prime'
require 'set'
MAX = 28123


def sum_of_factors(number)
  # taken from this SO answer, with my modifications.
  # http://stackoverflow.com/questions/3398159/all-factors-of-a-given-number
  primes, powers = number.prime_division.transpose
  exponents = powers.map{|i| (0..i).to_a}
  divisors = exponents.shift.product(*exponents).map do |powers|
    primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
  end
  return divisors.find_all{|i| i <= number/2 }.inject(:+)
end

abudants = []
(2..MAX).each do |number|
  _sum = sum_of_factors(number)
  if _sum > number
    abudants.push(number)
  end
end

first_odd = abudants.find{|i| i % 2 != 0 }
first_even = abudants.find{|i| i % 2 == 0 }
odds = abudants.find_all{|i| i % 2 != 0 }
evens = abudants.find_all{|i| i % 2 == 0 }


s = Set.new []
abudants.each do |i|
  abudants.each do |j|
    s.add(i + j)
  end
end

sum = 0
(1..MAX).each do |number|
  if not s.include?(number)
    sum += number
  end
end

puts sum
