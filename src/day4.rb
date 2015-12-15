#! /usr/bin/env ruby
require 'digest'

@input = STDIN.read.chomp

def lowest_positive_number(number_of_leading_zeros = 5)
  i = 0
  zeroes = '0' * number_of_leading_zeros

  loop do
    md5 = Digest::MD5.hexdigest("#{@input}#{i}")
    break if md5.start_with?(zeroes)
    i = i + 1
  end

  i
end

p lowest_positive_number, lowest_positive_number(6)
