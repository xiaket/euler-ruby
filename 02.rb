# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       02.rb
# Date created:   2016-08-06 15:02
# Last modified:  2016-08-06 15:15
#
# Description:
#

# Generate Fibonacci sequence.
fibo = [1, 2]
while true
  next_in_seq = fibo[-1] + fibo[-2]
  if next_in_seq > 4000000
    break
  end
  fibo.push(next_in_seq)
end

sum = 0
fibo.each { |a| sum+=a if a % 2 == 0 }
puts sum
