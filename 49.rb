#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       49.rb
# Date created:   2016-08-21 19:08
# Last modified:  2016-08-21 21:30
#
# Description:
#

require 'prime'
require 'set'

primes = Prime.each(10000).find_all{|i| i > 1000 and i.to_s.chars.to_set.length > 2}

prime_set = primes.to_set

valid = {}
primes.each do |prime|
  if prime.to_s.chars.permutation.map(&:join).count {|s| primes.include?(s.to_i)} <= 2
    next
  end
  if valid.include? prime.to_s.chars.sort
    valid[prime.to_s.chars.sort].push prime
  else
    valid[prime.to_s.chars.sort] = [prime]
  end
end

valid.delete 1487.to_s.chars.sort

valid.values.each do |primes|
  primes.combination(2).each do |c|
    if primes.include?(c.reduce(:+) / 2)
      c.push c.reduce(:+) / 2
      c.sort!
      puts "#{c.map{|i| i.to_s}.join}"
    end
  end
end
