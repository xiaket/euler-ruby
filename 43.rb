#!/usr/bin/env ruby
# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       43.rb
# Date created:   2016-08-20 11:47
# Last modified:  2016-08-20 12:58
#
# Description:
#

require 'set'

valid = []
all = (0..9).map{|i| i.to_s }.to_set

(17..999).find_all {|i| i % 17 == 0}.map{|i| i.to_s.rjust(3, '0')}.find_all{|s| s.chars.to_set.length == 3}.each do |s8_10|
  s8_9 = s8_10.chars[0..1]
  (0..9).each do |i7|
    if ([i7.to_s] + s8_9).join.to_i % 13 == 0 and (i7.to_s + s8_10).chars.to_set.length == 4
      s7_10 = i7.to_s + s8_10
      s7_8 = s7_10.chars[0..1]
      [0, 5].each do |i6|
        if ([i6.to_s] + s7_8).join.to_i % 11 == 0 and (i6.to_s + s7_10).chars.to_set.length == 5
          s6_10 = i6.to_s + s7_10
          s6_7 = s6_10.chars[0..1]
          (0..9).each do |i5|
            if ([i5.to_s] + s6_7).join.to_i % 7 == 0 and (i5.to_s + s6_10).chars.to_set.length == 6
              s5_10 = i5.to_s + s6_10
              s5 = i5.to_s
              [0, 2, 4, 6, 8].each do |i4|
                (0..9).each do |i3|
                  if (i3.to_s + i4.to_s + s5).to_i % 3 == 0 and (i3.to_s + i4.to_s + s5_10).chars.to_set.length == 8
                    s3_10 = (i3.to_s + i4.to_s + s5_10).chars.to_set
                    (all - s3_10).to_a.permutation.each do |i|
                      valid.push((i.join + i3.to_s + i4.to_s + s5_10).to_i)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

puts valid.reduce(:+)
