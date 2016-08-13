#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       32.rb
# Date created:   2016-08-13 18:33
# Last modified:  2016-08-13 22:43
#
# Description:
#
# Can only be:
#   [] * [][][][] = [][][][]
#   [][] * [][][] = [][][][]

require 'set'
all_numbers = (1..9).to_set

valid_product = []

# 1 and 9 would not work.
(2..8).each do |i|
  is = i.to_s.chars
  numbers = all_numbers
  is.each do |ch|
    numbers.delete(ch.to_i)
  end
  fours = []
  numbers.to_a.permutation(4).to_a.each do |arr|
    fours.push(arr.map{|i| i.to_s }.join.to_i)
  end
  fours = fours.sort
  fours.each do |j|
    product = i * j
    if product > 10000
      break
    end
    s = product.to_s
    if s.include?('0')
      next
    end

    if (j.to_s.chars + product.to_s.chars + is).uniq! == nil
      valid_product.push(product)
    end
  end
  is.each do |ch|
    numbers.add(ch.to_i)
  end
end

# 1 and 9 would not work.
(12..98).each do |i|
  if i % 10 == i / 10 or i % 10 == 0
    # two numbers in i should be different,
    # and its second number should not be zero.
    next
  end
  is = i.to_s.chars
  numbers = all_numbers
  is.each do |ch|
    numbers.delete(ch.to_i)
  end
  fours = []
  numbers.to_a.permutation(3).to_a.each do |arr|
    fours.push(arr.map{|i| i.to_s }.join.to_i)
  end
  fours = fours.sort
  fours.each do |j|
    product = i * j
    if product > 10000
      break
    end
    s = product.to_s
    if s.include?('0')
      next
    end

    if (j.to_s.chars + product.to_s.chars + is).uniq! == nil
      valid_product.push(product)
    end
  end
  is.each do |ch|
    numbers.add(ch.to_i)
  end
end

puts valid_product.to_set.to_a.reduce(:+)
