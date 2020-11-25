#!/usr/bin/env ruby
board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
winners = [ [board[0], board[1], board[2]], [board[3], board[4], board[5]], 
            [board[6], board[7], board[8]], [board[0], board[3], board[6]],
            [board[1], board[4], board[7]], [board[2], board[5], board[8]],
            [board[0], board[4], board[8]], [board[2], board[4], board[6]] ]

def display(board)
  puts "      #{board[0]} | #{board[1]} | #{board[2]} "
  puts "      -----------"
  puts "      #{board[3]} | #{board[4]} | #{board[5]} "
  puts "      -----------"
  puts "      #{board[6]} | #{board[7]} | #{board[8]} "
end

display(board)

def move(board, position, player = "X")
  board.delete_at(position - 1)
  board[position.to_i-1] = player
end

def position_empty?(board, position)
  board[position.to_i-1] != 'X' && board[position.to_i-1] != 'O'
end

def valid_movements?(board, position)
  position.to_i.between?(1..9) && position_empty?(board, position)
end

def handle_turn(board)
  puts "\nPlease select a position from 1 to 9\n"
  position = gets.chomp.to_i
  if valid_movements?(board, position)
  move(board, position, current_player(board)) && display(board)
  else
  puts "Invalid movement"
  handle_turn(board)
  end
end

def turn_counter(board)
  count = 0
board.each do |move|
"#{move}" == "X" || "#{move}" == "O"
count += 1
end
  return count
end

def current_player(board)
  turn_counter(board).even  ? 'X' : 'O'
end

def winners(board)
  winner = ""
  if winners.include?(['X', 'X', 'X'])
     winner = "Player_1"
  elsif winners.include?(['O', 'O', 'O'])
    winner = "Player_2"
  else
      winner = "None"
  end
  winner
end

def game_over?(board)
  (winners(board) ==  "Player_1" || winners(board) ==  "Player_2") || 
end


def playing(board)
  until game_over?(board)
    handle_turn(board)
  end
  if 
  end



end
