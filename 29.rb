#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       29.rb
# Date created:   2016-08-08 22:23
# Last modified:  2016-08-08 22:24
#
# Description:
#

numbers = []
(2..100).each do |a|
  (2..100).each do |b|
    numbers.push(a**b)
  end
end

puts numbers.uniq.length
