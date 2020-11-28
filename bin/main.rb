#!/usr/bin/env ruby
require './lib/gametictac'

puts "Please select a symbol to play: 'X' / 'O'"
symbol = gets.chomp.upcase
until %w[X O].include?(symbol)
  puts "Invalid Selection. Please select a symbol to play: 'X' / 'O'"
  symbol = gets.chomp.upcase
end

tctc = Tictactoe.new(symbol)
puts "\nLet's start to play"

until tctc.win? == 'X wins!' || tctc.win? == 'O wins!' || tctc.full? == true
  puts tctc.display
  puts "\nPlease select a position from 1 to 9\n"
  position = gets.chomp.to_i
  if tctc.valid_movements?(position)
    tctc.move(position)
    puts "last symbol that was played: '#{tctc.win?}'"
  else
    puts 'Invalid movement'
    puts "\nPlease select a position from 1 to 9\n"
  end
end
puts tctc.display
