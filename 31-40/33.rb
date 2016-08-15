#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       33.rb
# Date created:   2016-08-13 22:44
# Last modified:  2016-08-13 22:52
#
# Description:
#

numerators = []
denominators = []

(1..9).each do |a|
  (1..9).each do |b|
    (1..9).each do |c|
      if a == b or a == c
        next
      end
      if 10 * a * b == 9 * a * c + b * c
        numerators.push(a)
        denominators.push(c)
      end
    end
  end
end

puts denominators.reduce(:*) / numerators.reduce(:*)
