# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       03.rb
# Date created:   2016-08-06 15:17
# Last modified:  2016-08-06 15:50
#
# Description:
#

require 'prime'

puts 600851475143.prime_division.map { |i| i[0] }[-1]
