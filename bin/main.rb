#!/usr/bin/env ruby
board = %w[1 2 3 4 5 6 7 8 9]
puts "#{board[0]} | #{board[1]} | #{board[2]}"
puts "#{board[3]} | #{board[4]} | #{board[5]}"
puts "#{board[6]} | #{board[7]} | #{board[8]}"

def handle_turn
  board = %w[1 2 3 4 5 6 7 8 9]
  puts "\nLet's start to play"
  puts "\nPlayer 1 please select a position from 1 to 9\n"
  position_a = gets.chomp.to_i
  board.delete_at(position_a - 1)
  board.insert(position_a - 1, 'X')
  puts "    #{board[0]} | #{board[1]} | #{board[2]}"
  puts "    #{board[3]} | #{board[4]} | #{board[5]}"
  puts "    #{board[6]} | #{board[7]} | #{board[8]}"
  puts "\nPlayer 2 please select a position from 1 to 9\n"
  position_b = gets.chomp.to_i
  if position_a == position_b
    puts "\nInvalid movement, please select a position from 1 to 9\n\n"
    position_b = gets.chomp.to_i
  end
  board.delete_at(position_b - 1)
  board.insert(position_b - 1, 'O')
  puts "    #{board[0]} | #{board[1]} | #{board[2]}"
  puts "    #{board[3]} | #{board[4]} | #{board[5]}"
  puts "    #{board[6]} | #{board[7]} | #{board[8]}"
  puts "\nPlayer 2 won!"
  puts "\nWould you like to restart the game \"Y\"/\"N\""
  replay = gets.chomp.upcase
  case replay
  when 'Y'
    puts "\nLet's play again"
    board = %w[1 2 3 4 5 6 7 8 9]
    puts "#{board[0]} | #{board[1]} | #{board[2]}"
    puts "#{board[3]} | #{board[4]} | #{board[5]}"
    puts "#{board[6]} | #{board[7]} | #{board[8]}"
  when 'N'
    puts "\nGame over"
  else
    puts "\nInvalid character, Please select Y or N"
  end
end

handle_turn
