# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       16.rb
# Date created:   2016-08-07 11:16
# Last modified:  2016-08-07 11:27
#
# Description:
#

puts (2**1000).to_s.chars.map{|ch| ch.to_i}.inject{ |sum, i| sum + i }
