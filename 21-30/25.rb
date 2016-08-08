# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       25.rb
# Date created:   2016-08-07 22:13
# Last modified:  2016-08-07 22:18
#
# Description:
#

LIMIT = 10**999
index = 2 
fibo = [1, 1]

while true
  next_in_seq = fibo[-1] + fibo[-2]
  index += 1
  if next_in_seq > LIMIT
    break
  end
  fibo.push(next_in_seq)
end

puts index
