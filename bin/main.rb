#!/usr/bin/env ruby
require './lib/gametictac'

tctc = Tictactoe.new

puts tctc.display

    puts "\nLet's start to play"


  until  tctc.win? == 'X won!' || tctc.win? == 'O won!' || tctc.full? == true   do
    puts "\nPlease select a position from 1 to 9, ('X' starts and 'O' continues)\n"
    position = gets.chomp.to_i
    if tctc.valid_movements?(position)
      tctc.move(position)
      puts tctc.display
    else
      puts "Invalid movement"
      puts "\nPlease select a position from 1 to 9\n"
      puts tctc.display
    end
  end

  if tctc.win? == 'X won!' || tctc.win? == 'O won!' || tctc.full? == true 
    puts tctc.win? + '  GAME OVER'
  end
