#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       48.rb
# Date created:   2016-08-21 18:36
# Last modified:  2016-08-21 18:37
#
# Description:
#

puts (1..1000).map{|i| i**i}.reduce(:+).to_s[-10..-1]
