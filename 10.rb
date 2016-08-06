# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       10.rb
# Date created:   2016-08-06 19:40
# Last modified:  2016-08-06 19:44
#
# Description:
#
require 'prime'

puts Prime.take_while{|p| p < 2000000 }.inject { |sum, n| sum + n }
