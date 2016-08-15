#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       38.rb
# Date created:   2016-08-15 20:40
# Last modified:  2016-08-15 21:11
#
# Description:
#
# if base is a single digit, then it must be 9. for the product is pandigital,
# a factor of 9 is implied, and 3 just does not work.
#
# we have result: 918273645
#
# if base is of two digits, then the series is (1..4), so we have:
#   4 * n > 100 > 3 * n
# considering that n must contains a 9, n = 27, and this number does not work.
#
# if base is of three digits, then we must have:
#   n * 3 < 1000
# consequently, the result is very small(even if there is an answer)
#
# then we have our final option, base is of four digits, and n * 2 > 10000,
# we should carry out a search from 9999 -> 5000, looking for desiable patterns.

require 'set'
result = "918273645"

9876.downto(5012).each do |i|
  digits = (i.to_s.chars + (i * 2).to_s.chars).to_set
  if digits.length == 9 and not digits.include?'0'
    if (i.to_s.chars + (i * 2).to_s.chars).join > result
      puts (i.to_s.chars + (i * 2).to_s.chars).join
    else
      puts result
    end
    exit 0
  end
end
