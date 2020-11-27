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

      def full?
      board.none? " "
      end

      def win?
        winner = ""
        if board[0] == @symbol1 && board[1] == @symbol1 && board[2] == @symbol1 ||
           board[3] == @symbol1 && board[4] == @symbol1 && board[5] == @symbol1 ||
           board[6] == @symbol1 && board[7] == @symbol1 && board[8] == @symbol1 ||
           board[0] == @symbol1 && board[3] == @symbol1 && board[6] == @symbol1 ||
           board[1] == @symbol1 && board[4] == @symbol1 && board[7] == @symbol1 ||
           board[2] == @symbol1 && board[5] == @symbol1 && board[8] == @symbol1 ||
           board[0] == @symbol1 && board[4] == @symbol1 && board[8] == @symbol1 ||
           board[2] == @symbol1 && board[4] == @symbol1 && board[6] == @symbol1
           winner = 'X won!'
        elsif
          board[0] == @symbol2 && board[1] == @symbol2 && board[2] == @symbol2 ||
          board[3] == @symbol2 && board[4] == @symbol2 && board[5] == @symbol2 ||
          board[6] == @symbol2 && board[7] == @symbol2 && board[8] == @symbol2 ||
          board[0] == @symbol2 && board[3] == @symbol2 && board[6] == @symbol2 ||
          board[1] == @symbol2 && board[4] == @symbol2 && board[7] == @symbol2 ||
          board[2] == @symbol2 && board[5] == @symbol2 && board[8] == @symbol2 ||
          board[0] == @symbol2 && board[4] == @symbol2 && board[8] == @symbol2 ||
          board[2] == @symbol2 && board[4] == @symbol2 && board[6] == @symbol2
          winner = 'O won!'
        else
          winner = 'No winner'
        end
        winner
      end 
end
