# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       12.rb
# Date created:   2016-08-06 21:50
# Last modified:  2016-08-06 22:01
#
# Description:
#
require 'prime'

i = 1
triangle_number = 1

while true
  i += 1
  triangle_number += i
  if triangle_number.prime_division.map{ |arr| arr[1] + 1 }.inject{ |prod, n| prod * n } > 500
    puts triangle_number
    break
  end
end
