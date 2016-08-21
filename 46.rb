#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       46.rb
# Date created:   2016-08-21 18:18
# Last modified:  2016-08-21 18:28
#
# Description:
#

require 'prime'

(2..10000).each do |n|
  i = n * 2 + 1
  if Prime.prime? i
    next
  end
  part2 = Math.sqrt(i/2).to_i
  unless (1..part2).map {|j| i - 2 * j * j}.map {|part1| Prime.prime? part1}.any?
    puts i
    exit 0
  end
end
