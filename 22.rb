# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       22.rb
# Date created:   2016-08-07 18:50
# Last modified:  2016-08-07 19:10
#
# Description:
#

file = File.open("22.data")
names = file.read().delete('"').split(",").sort
file.close()

sum = 0
names.each_with_index do |name, index|
  sum += (index + 1) * (name.downcase().chars.map{|ch| ch.ord - 96}.inject(:+))
end

puts sum
