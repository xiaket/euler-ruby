# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       19.rb
# Date created:   2016-08-07 17:58
# Last modified:  2016-08-07 18:33
#
# Description:
#

require 'date'

count = 0
start = Date.new(1901,1,6)
while start < Date.new(2000, 12, 31)
  start += 7
  if start.day == 1
    count += 1
  end
end

puts count
