# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       15.rb
# Date created:   2016-08-06 23:23
# Last modified:  2016-08-07 11:15
#
# Description:
#

$cache = {}

def get_value(pair)
  if $cache.has_key?(pair)
    return $cache[pair]
  end
  x, y = pair
  if y == 0
    return 1
  end
  if x == 1
    return y + 1
  end
  v = get_value([x, y-1]) + get_value([x-1, y])
  $cache[pair] = v
  return v
end

puts get_value([20, 20])
