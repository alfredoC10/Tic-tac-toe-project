#!/usr/bin/env ruby
require './lib/gametictac'

game = nil
tctc = Tictactoe.new

puts tctc.display

    puts "\nLet's start to play"
    puts "\nPlease select a position from 1 to 9, the 'X' will be the first symbol\n"


  until  tctc.full?(board) || tctc.win?(board)  do
  loop do 
    position = gets.chomp.to_i
    if tctc.valid_movements?(position)
      tctc.move(position)
      puts tctc.display
      puts "\nPlease select an available position from 1 to 9\n"
    else
      puts "Invalid movement"
      puts "\nPlease select a position from 1 to 9\n"
    end
  end
  end

    

=begin  
    #def game_over?(board)
    #  (winners(board) ==  "Player_1" || winners(board) ==  "Player_2") || 
    #end
    
    #def playing(board)
    #  until game_over?(board)
    #    handle_turn(board)
    #  if 
=end
   

