# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       20.rb
# Date created:   2016-08-07 18:35
# Last modified:  2016-08-07 18:36
#
# Description:
#

puts (1..100).inject(:*).to_s.chars.map{|ch| ch.to_i}.inject{|sum, i| sum + i}
