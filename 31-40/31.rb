#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       31.rb
# Date created:   2016-08-12 21:28
# Last modified:  2016-08-13 18:31
#
# Description:
#

def devide_count(number, components)
  largest = components[-1]
  remains = components[0..-2]
  if number == 0
    # the last devide is just right, for example. 10 uses two 5s.
    return 1
  elsif components.length == 1
    # there's only one way to use a lot of 1s to form a non-zero number.
    return 1
  end

  if number < largest
    # if number = 32 and we just used three 10s, so the remains(2) is lower
    # than the largest number in components.
    return devide_count(number, remains)
  elsif number == largest
    return 1 + devide_count(number, remains)
  else
    j = number / largest
    value = 0
    (0..j).each do |i|
      value += devide_count(number - i * largest, remains)
      #puts "#{value}, #{number - i * largest}, #{remains}"
    end
    return value
  end
end

puts devide_count(200, [1, 2, 5, 10, 20, 50, 100, 200])
