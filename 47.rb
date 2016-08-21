#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       47.rb
# Date created:   2016-08-21 18:29
# Last modified:  2016-08-21 18:35
#
# Description:
#

require 'prime'

record = {}

(10..1000000).each do |i|
  record[i] = i.prime_division.length
  if record[i] == 4 and record[i-1] == 4 and record[i-2] == 4 and record[i-3] == 4
    puts i - 3
    exit 0
  end
end
