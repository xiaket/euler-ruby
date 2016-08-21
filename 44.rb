#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       44.rb
# Date created:   2016-08-21 17:49
# Last modified:  2016-08-21 18:04
#
# Description:
#
require 'set'

pentagons = (1..10000).map {|i| i * (3*i - 1) / 2}

pentagon_set = pentagons.to_set

valids = []
pentagons.each_with_index do |pen4, i|
  pentagons[(i+1)..9999].each do |pen3|
    if (pen3 - pen4) % 2 != 0
      next
    end
    if pentagon_set.include?((pen3 - pen4) / 2) and pentagon_set.include?((pen3 + pen4) / 2)
      valids.push(pen4)
    end
  end
end

puts valids.min
