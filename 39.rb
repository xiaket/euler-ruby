#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       39.rb
# Date created:   2016-08-15 21:11
# Last modified:  2016-08-15 21:35
#
# Description:
#

require 'set'


squares = {}
(1..500).each do |i|
  squares[i] = i*i
end

square_set = squares.values.to_set
square_root = squares.invert

pattern_count = {}
(1..333).each do |a|
  (a..500).each do |b|
    if square_set.include?(squares[a] + squares[b])
      _sum = a + b + square_root[squares[a] + squares[b]]
      if _sum > 1000
        break
      end
      if pattern_count.include? _sum
        pattern_count[_sum] += 1
      else
        pattern_count[_sum] = 1
      end
    end
  end
end

puts pattern_count.invert[pattern_count.values.max]
