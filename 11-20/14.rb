# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       14.rb
# Date created:   2016-08-06 22:11
# Last modified:  2016-08-06 23:22
#
# Description:
#

$cache = {}

def next_number(number)
  if number % 2 == 0
    return number / 2
  else
    return 3 * number + 1
  end
end

def chain_length(number)
  if $cache.include?(number)
    return
  end
  length = 1
  chain = [number]
  _next = number
  while _next != 1
    length += 1
    _next = next_number _next
    chain.push(_next)
    if $cache.include?(_next)
      break
    end
  end

  start = 0
  chain.reverse.each_with_index do |n, i|
    if $cache.include?(n)
      start = $cache[n] - 1
    else
      $cache[n] = i + 1 + start
    end
  end
end

999999.downto(1).each do |i|
  chain_length i
end

$cache = $cache.invert
puts $cache[$cache.keys.max]

#max_value = 0
#max_key = 0
#$cache.each do |key, value|
#  if value > max_value
#    max_key = key
#    max_value = value
#  end
#end

#puts max_key
