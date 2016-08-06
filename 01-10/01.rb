# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       01.rb
# Date created:   2016-08-06 14:50
# Last modified:  2016-08-06 14:57
#
# Description:
#
sum = 0

(1..999).each do |number|
  unless number % 3 != 0 and number % 5 != 0
    sum += number
  end
end

puts sum
