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
  total_houses = 1
  visited_houses = { "0x0" => 2 }
  position_santa = [0, 0]
  position_robot = [0, 0]

  @input.each_with_index do |direction, index|
    position = index.even? ? position_santa : position_robot
    moved = move_to(direction, position)

    key = "#{moved[0]}x#{moved[1]}"

      total_houses = total_houses + 1
      visited_houses[key] = 1
  end

  return visited_houses.size
end

p count_houses
