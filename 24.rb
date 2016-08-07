# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       24.rb
# Date created:   2016-08-07 22:07
# Last modified:  2016-08-07 22:11
#
# Description:
#

puts (0..9).to_a.permutation.to_a[999999].map{|i| i.to_s}.join
