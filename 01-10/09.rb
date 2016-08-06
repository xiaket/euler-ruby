# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       09.rb
# Date created:   2016-08-06 19:27
# Last modified:  2016-08-06 19:39
#
# Description:
#
#
SUM = 1000

(2..(SUM/2)).each do |a|
  (a..(SUM/2)).each do |b|
    if a * b + 500000 == 1000 * (a + b)
      puts a * b * (1000 - a - b)
      break
    end
  end
end

