#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       30.rb
# Date created:   2016-08-08 22:31
# Last modified:  2016-08-08 23:39
#
# Description:

found = []
(2..999999).each do |number|
  if number == number.to_s.chars.map{|ch| ch.to_i ** 5}.inject(:+)
    found.push(number)
  end
end

puts found.inject(:+)
