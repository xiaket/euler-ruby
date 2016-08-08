#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       28.rb
# Date created:   2016-08-08 21:54
# Last modified:  2016-08-08 22:17
#
# Description:
#
# 43 44 45 46 47 48 49
# 42 21 22 23 24 25 26
# 41 20 07 08 09 10 27
# 40 19 06 01 02 11 28
# 39 18 05 04 03 12 29
# 38 17 16 15 14 13 30
# 37 36 35 34 33 32 31
#
# a  b
#
# c  d

L = 1001

chain_a = (1..L).find_all{|i| i % 2 != 0}.map{ |n| n*n - n + 1 }
chain_b = (1..L).find_all{|i| i % 2 != 0}.map{ |n| n*n }
chain_c = (0..L-1).find_all{|i| i % 2 == 0}.map{ |n| n*n + 1 }
chain_d = (0..L-1).find_all{|i| i % 2 == 0}.map{ |n| n*n - n + 1 }

puts (chain_a + chain_b + chain_c + chain_d).uniq.inject(:+)
