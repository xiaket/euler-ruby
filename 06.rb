# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       06.rb
# Date created:   2016-08-06 16:28
# Last modified:  2016-08-06 16:30
#
# Description:
#

puts (1..100).inject { |sum, n| sum + n }** 2 - (1..100).inject { |sum, n| sum + n*n }
