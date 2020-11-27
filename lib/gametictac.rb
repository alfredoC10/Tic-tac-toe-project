class Gamer
    attr_reader :symbol
    def initialize()
        @symbol = symbol
    end
end

class Tictactoe
    attr_reader :board
    def initialize()
        @symbol1 = 'X' 
        @symbol2 = 'O'
        @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
        @turn = true
      end

      def display
        puts "        #{board[0]} | #{board[1]} | #{board[2]} "
        puts "      -------------"
        puts "        #{board[3]} | #{board[4]} | #{board[5]} "
        puts "      -------------"
        puts "        #{board[6]} | #{board[7]} | #{board[8]} "
      end

      def valid_movements?(position)
        (position > 0 && position < 10) && board[position.to_i-1] == " "
      end

      def move(position)
        board[position.to_i-1] = @turn ? @symbol1 : @symbol2
        @turn = !@turn
      end

      def full?(board)
      board.none? == " "
      end
    
  winners = [ [board[0], board[1], board[2]], [board[3], board[4], board[5]], 
      [board[6], board[7], board[8]], [board[0], board[3], board[6]],
      [board[1], board[4], board[7]], [board[2], board[5], board[8]],
      [board[0], board[4], board[8]], [board[2], board[4], board[6]] ]
      
      def win?(board)
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
    
end

