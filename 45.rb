#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       45.rb
# Date created:   2016-08-21 18:06
# Last modified:  2016-08-21 18:17
#
# Description:
#

require 'set'

MAX = 10 ** 12

triangle_max = Math.sqrt(2*MAX).to_i
pentagonal_max = Math.sqrt(MAX * 2 / 3).to_i
hexagonal_max = Math.sqrt(MAX/2).to_i

triangles = (1..triangle_max).map{|i| i * (i + 1) / 2}.to_set
pentagonals = (1..pentagonal_max).map{|i| i * (3 * i - 1) / 2}.to_set
hexagonals = (1..hexagonal_max).map{|i| i * (i + i -1)}.to_set

puts (triangles & pentagonals & hexagonals).to_a.max
