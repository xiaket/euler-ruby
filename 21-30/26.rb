# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       26.rb
# Date created:   2016-08-07 22:25
# Last modified:  2016-08-07 23:05
#
# Description:
#
require 'prime'

def recurring_cycle_length(number)
  rest = 10
  cycle = []
  while rest < number
    rest *= 10
    cycle.push(0)
  end
  while true
    while rest < number
      rest *= 10
    end
    cycle.push(rest / number)
    rest = rest % number
    if rest == 1
      break
    elsif rest == 0
      return 0
    end
  end
  return cycle.length
end

max_length = 0
number = 0
(2..999).each do |i|
  unless i.prime?
    next
  end
  if recurring_cycle_length(i) > max_length
    max_length = recurring_cycle_length i
    number = i
  end
end

puts number
