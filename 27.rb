#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       27.rb
# Date created:   2016-08-08 21:29
# Last modified:  2016-08-08 21:49
#
# Description:
# we start with n == 0, thus b should be a prime number, and b should 
# definitely not be 2(blow up when n is even)

require 'prime'

bs = Prime.first(200).find_all{|n| n < 1000 and n > 2}

max_length = 0
max_a, max_b = 0, 0
bs.each do |b|
  (2-b..1000).each do |a|
    length = 0
    (0..1000).each do |n|
      number = n * n + a * n + b
      unless Prime.prime?(number)
        if length > max_length
          max_a, max_b = a, b
          max_length = length
        end
        break
      end
      length += 1
    end
  end
end

puts max_a * max_b
