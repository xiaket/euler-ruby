# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       03.rb
# Date created:   2016-08-06 15:17
# Last modified:  2016-08-06 15:19
#
# Description:
#

require 'prime'

puts 600851475143.prime_division.flatten.sort[-1]
