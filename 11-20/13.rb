# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       13.rb
# Date created:   2016-08-06 19:47
# Last modified:  2016-08-06 22:06
#
# Description:
#

file = File.open("13.data")
lines = file.read()
file.close()

puts "#{lines.split().map{|s| s.to_i}.inject { |sum, n| sum + n }.to_s[0..9]}"
