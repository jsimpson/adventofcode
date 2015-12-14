#! /usr/bin/env ruby

input = STDIN.read.chomp.split('')

floor = 0
position = -1

input.each_with_index do |ch, index|
  case ch
  when '('
    floor = floor + 1
  when ')'
    floor = floor - 1
  end

  if floor == -1 && position < 0
    position = index + 1
  end
end

puts "floor number #{floor}"
puts "position number #{position}"
