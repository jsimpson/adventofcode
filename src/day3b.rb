#! /usr/bin/env ruby

@input = STDIN.read.chomp.split('')

def move_to(direction, coordinates)
  case direction
  when '^'
    coordinates[0] = coordinates[0] + 1
  when 'v'
    coordinates[0] = coordinates[0] - 1
  when '>'
    coordinates[1] = coordinates[1] + 1
  when '<'
    coordinates[1] = coordinates[1] - 1
  end

  coordinates
end

def count_houses
  visited_houses = { "0x0" => 1 }
  coordinates_santa = [0, 0]
  coordinates_robot = [0, 0]

  @input.each_with_index do |direction, index|
    coordinates = index.even? ? coordinates_santa : coordinates_robot
    position = move_to(direction, coordinates)
    key = "#{position[0]}x#{position[1]}"
    visited_houses[key] = 1
  end

  visited_houses.size
end

p count_houses
