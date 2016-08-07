# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       67.rb
# Date created:   2016-08-07 17:36
# Last modified:  2016-08-07 17:57
#
# Description:
#

file = File.open("67.data")
lines = file.read().split("\n")
file.close()

added_lines = [lines[0].to_i]

lines.each do |line|
  if line.split.length == 1
    next
  end
  this_line = line.split().map{|n| n.to_i }
  this_line.each_with_index { |number, i|
    if i > 0 and i < this_line.length - 1
      this_line[i] += [added_lines[i], added_lines[i-1]].max
    elsif i == 0
      this_line[i] += added_lines[0]
    else
      this_line[i] += added_lines[-1]
    end
  }
  added_lines = this_line
end

puts "#{added_lines.max}"
