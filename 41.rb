#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       41.rb
# Date created:   2016-08-15 21:54
# Last modified:  2016-08-15 22:00
#
# Description:
#
require 'prime'
require 'set'

bad_digits = ['2', '4', '5', '6', '8'].to_set

candidates = []
'12345678'.chars.permutation.to_a.each do |arr|
  if bad_digits.include? arr[-1]
    next
  end
  number = arr.join.to_i
  if number.prime?
    candidates.push(number)
  end
end

'1234567'.chars.permutation.to_a.each do |arr|
  if bad_digits.include? arr[-1]
    next
  end
  number = arr.join.to_i
  if number.prime?
    candidates.push(number)
  end
end

puts candidates.max
