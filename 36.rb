#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       36.rb
# Date created:   2016-08-14 17:46
# Last modified:  2016-08-14 21:36
#
# Description:
#

def is_palindromic?(number) 
  binary = number.to_s(2)
  (0..binary.length / 2).each do |i|
    if binary[i] != binary[-(i + 1)]
      return false
    end
  end
  return true
end

valid = []
(1..999).each do |i|
  number1 = (i.to_s + i.to_s.reverse).to_i
  number2 = (i.to_s[0..-2] + i.to_s.reverse).to_i
  if is_palindromic?(number1)
    valid.push(number1)
  end
  if is_palindromic?(number2)
    valid.push(number2)
  end
end

puts valid.reduce(:+)
