#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       42.rb
# Date created:   2016-08-15 22:02
# Last modified:  2016-08-15 22:11
#
# Description:
#

require 'set'

file = File.open("42.data")
names = file.read().delete('"').split(",").sort
file.close()

traigonals = (1..40).map{|i| i * (i + 1) / 2}.to_set

count = 0
names.each do |name|
  sum = name.downcase().chars.map{|ch| ch.ord - 96}.inject(:+)
  if traigonals.include? sum
    count += 1
  end
end

puts count
