#! /usr/bin/env ruby

input = STDIN.read.chomp.split('')

total_houses = 1
visited_houses = { "0x0" => 1 }
x, y = 0, 0

input.each_with_index do |direction, index|
  case direction
  when '^'
    x = x + 1
  when 'v'
    x = x - 1
  when '>'
    y = y + 1
  when '<'
    y = y - 1
  end

  key = "#{x}x#{y}"

  if visited_houses[key].nil?
    total_houses = total_houses + 1
    visited_houses[key] = 1
  end
end

p total_houses
