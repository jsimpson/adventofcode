#! /usr/bin/env ruby

input = STDIN.read.gsub('\n', ' ').split(' ')

total_area = 0
total_ribbon = 0

input.each_with_index do |dimensions, index|
  size = dimensions.split('x').sort_by(&:to_i)

  sides = []
  sides << size[0].to_i * size[1].to_i
  sides << size[1].to_i * size[2].to_i
  sides << size[2].to_i * size[0].to_i

  total_area = total_area + ((2 * sides[0] + 2 * sides[1] + 2 * sides[2]) + sides[0])

  ribbon = 2 * size[0].to_i + 2 * size[1].to_i
  bow = size[0].to_i * size[1].to_i * size[2].to_i

  total_ribbon = total_ribbon + (ribbon + bow)
end

p total_area, total_ribbon
