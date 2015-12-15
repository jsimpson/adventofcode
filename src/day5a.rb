#! /usr/bin/env ruby

input = STDIN.read.gsub('\n', ' ').split(' ')

nice_strings = 0
input.each do |s|
  next if s.scan(/[aeiou]/i).size < 3
  next unless /([a-z])\1/i.match(s)
  next if /ab|cd|pq|xy/i.match(s)

  nice_strings = nice_strings + 1
end

p nice_strings
