#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       40.rb
# Date created:   2016-08-15 21:36
# Last modified:  2016-08-15 21:52
#
# Description:
#

s = (1..1000000/5).map{|i| i.to_s}.join

puts (s[0].to_i) * (s[9].to_i) * (s[99].to_i) * (s[999].to_i) * (s[9999].to_i) * (s[99999].to_i) * (s[999999].to_i)
