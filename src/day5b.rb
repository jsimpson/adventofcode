#! /usr/bin/env ruby

input = STDIN.read.gsub('\n', ' ').split(' ')

nice_strings = 0
input.each do |s|
  next unless s =~ /([a-z][a-z]).*\1/
  next unless s =~ /([a-z]).\1/

  nice_strings = nice_strings + 1
end

p nice_strings
