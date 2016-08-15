#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       35.rb
# Date created:   2016-08-14 09:19
# Last modified:  2016-08-14 17:26
#
# Description:
#
require 'prime'
require 'set'

$primes = Prime.each(1000000).to_set
bads = ['0', '2', '4', '5', '6', '8'].to_set

def rotations_all_prime(number)
  l = []
  (1..number.to_s.length).each do |cut|
    i = (number.to_s[cut..-1] + number.to_s[0..cut-1]).to_i
    l.push($primes.include? i)
  end
  l.all?
end

valid = [2, 5]

$primes.each do |prime|
  # cannot have any bad digit in it.
  if prime.to_s.chars.to_set.intersection(bads).length != 0
    next
  end
  if rotations_all_prime prime
    valid.push(prime)
  end
end

puts "#{valid.length}"
