#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       50.rb
# Date created:   2016-08-21 21:31
# Last modified:  2016-08-21 21:57
#
# Description:
#

require 'prime'

MAX = 1000000

primes = Prime.each(MAX).to_a

max_terms = 0

(21..MAX).each do |count|
  if primes[0..count].reduce(:+) > MAX
    max_terms = count - 1
    break
  end
end

max_terms.downto(1).each do |terms|
  (0..MAX).each do |start|
    sum = 0
    if primes[start..(terms+start)].reduce(:+) > MAX
      break
    end
    if primes.include? primes[start..(terms+start)].reduce(:+)
      puts "#{primes[start..(terms + start)].reduce(:+)}"
      exit 0
    end
  end
end
