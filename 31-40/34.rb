#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       34.rb
# Date created:   2016-08-13 22:53
# Last modified:  2016-08-14 09:16
#
# Description:
#

$factorials = {'0'=>1}

(1..9).each do |i|
  $factorials[i.to_s] = (1..i).reduce(:*)
end

def sum_of_numbers(number)
  number.to_s.chars.map{|ch| $factorials[ch]}.reduce(:+)
end

valid_numbers = []
(3..999999).each do |i|
  if sum_of_numbers(i) == i
    valid_numbers.push(i)
  end
end

puts valid_numbers.reduce(:+)
