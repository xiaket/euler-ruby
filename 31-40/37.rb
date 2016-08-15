#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       37.rb
# Date created:   2016-08-14 21:37
# Last modified:  2016-08-15 20:39
#
# Description:
#
require 'prime'
require 'set'

$primes = Prime.each(1000000).to_set
bads = ['0', '4', '6', '8'].to_set

def parts_all_prime(number)
  (1..number.to_s.length - 1).each do |cut|
    if not $primes.include? number.to_s[0..cut].to_i
      return false
    end
    if not $primes.include? number.to_s[cut..-1].to_i
      return false
    end
  end
  return true
end

valid = []

$primes.each do |prime|
  # cannot have any bad digit in it.
  if prime.to_s.chars.to_set.intersection(bads).length != 0
    next
  end

  if prime.to_s.chars[0] == "1" or prime.to_s.chars[0] == "9"
    next
  end

  if prime.to_s.chars[-1] == "1" or prime.to_s.chars[-1] == "9"
    next
  end

  if parts_all_prime prime
    valid.push(prime)
  end
end

valid = valid.delete_if {|i| i < 10}
valid = valid.delete_if {|i| i.to_s[0] == "1"}
valid = valid.delete_if {|i| i.to_s[0] == "9"}


puts "#{valid.reduce(:+)}"
