# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       05.rb
# Date created:   2016-08-06 16:14
# Last modified:  2016-08-06 16:27
#
# Description:
#
require 'prime'

divisors = {}
(2..20).each do |i|
  i.prime_division.each do |base, power|
    if divisors.include? base
      if power > divisors[base]
        divisors[base] = power
      end
    else
      divisors[base] = power
    end
  end
end

puts Prime.int_from_prime_division(divisors.to_a)
