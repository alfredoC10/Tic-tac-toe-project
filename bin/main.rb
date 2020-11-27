#!/usr/bin/env ruby
require './lib/gametictac'

puts "Please select a symbol to play: 'X' / 'O'"
symbol = gets.chomp.upcase

tctc = Tictactoe.new(symbol)

puts "\nLet's start to play"

until tctc.win? == 'X won!' || tctc.win? == 'O won!' || tctc.full? == true
  puts tctc.display
  puts "\nPlease select a position from 1 to 9\n"
  position = gets.chomp.to_i
  if tctc.valid_movements?(position)
    tctc.move(position)
  else
    puts 'Invalid movement'
    puts "\nPlease select a position from 1 to 9\n"
  end
end
puts tctc.last_movement
puts "#{tctc.win?}  GAME OVER" if tctc.win? == 'X won!' || tctc.win? == 'O won!' || tctc.full? == true
puts tctc.display
