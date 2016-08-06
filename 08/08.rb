# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       08alt.rb
# Date created:   2016-08-06 16:34
# Last modified:  2016-08-06 19:22
#
# Description:
#

file = File.open("numbers")
lines = file.read()
file.close()

numbers = lines.delete("\n").chars.map{|ch| ch.to_i }

QUERY = 13

product = 0
(0..(numbers.length - QUERY)).each do |index|
  v = numbers[index..(index+QUERY-1)].inject{|value, n| value * n}
  if v > product
    product = v
  end
end

puts product
