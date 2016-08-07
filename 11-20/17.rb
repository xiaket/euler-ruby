# encoding: UTF-8
# Author:         Kent Xia/Xia Kai <kentx@pronto.net/xiaket@gmail.com>
# Filename:       17.rb
# Date created:   2016-08-07 11=>37
# Last modified:  2016-08-07 17:20
#
# Description=>
#

_1_to_9 = {
    1=> 'one',
    2=> 'two',
    3=> 'three',
    4=> 'four',
    5=> 'five',
    6=> 'six',
    7=> 'seven',
    8=> 'eight',
    9=> 'nine',
}

_11_to_19 = {
    11=> 'eleven',
    12=> 'twelve',
    13=> 'thirteen',
    14=> 'fourteen',
    15=> 'fifteen',
    16=> 'sixteen',
    17=> 'seventeen',
    18=> 'eighteen',
    19=> 'nineteen',
}

_10s = {
    10=> 'ten',
    20=> 'twenty',
    30=> 'thirty',
    40=> 'forty',
    50=> 'fifty',
    60=> 'sixty',
    70=> 'seventy',
    80=> 'eighty',
    90=> 'ninety',
}

characters = ""
(1..999).each do |number|
  name = ""
  n = number
  if n >= 100
    name += "#{_1_to_9[n / 100]} hundred"
    n = n % 100
    if n == 0
      characters += name
      next
    end
    name += " and "
  end

  if n < 10
    name += "#{_1_to_9[n]}"
  elsif n == 10
    name += "#{_10s[n]}"
  elsif n < 20
    name += "#{_11_to_19[n]}"
  else
    name += "#{_10s[n/10 * 10]} #{_1_to_9[n%10]}"
  end
  characters += name
end

characters += "one thousand"
puts characters.delete(" ").length
