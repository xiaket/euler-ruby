# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       11.rb
# Date created:   2016-08-06 19:47
# Last modified:  2016-08-06 21:45
#
# Description:
#

file = File.open("11.data")
lines = file.read()
file.close()

LENGTH = 4
max_product = 0
numbers = []

lines.split("\n").each do |row|
  num_row = row.split().map{|ch| ch.to_i }
  numbers.push(num_row)
end

# left -> right
(0..(numbers.length - 1)).each do |i|
  (0..(numbers.length - LENGTH)).each do |j|
    selected = []
    selected.push(numbers[i][j..(j+LENGTH-1)])
    selected.push(numbers[j..(j+3)].map{ |arr| arr[i] })
    if i <= numbers.length - LENGTH
      selected.push([numbers[i][j], numbers[i+1][j+1], numbers[i+2][j+2], numbers[i+3][j+3]])
      selected.push([numbers[i+LENGTH-1][j], numbers[i-2+LENGTH][j+1], numbers[i-3+LENGTH][j+2], numbers[i-4+LENGTH][j+3]])
    end

    product = selected.map{|arr| arr.inject { |prod, n| prod * n }}.max
    if product > max_product
      max_product = product
    end
  end
end

puts max_product
