# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
class Gamer
  attr_reader :symbol

  def initialize(symbol)
    @symbol = symbol
  end
end

class Tictactoe
  attr_reader :board

  def initialize(symbol)
    @symbol1 = Gamer.new(symbol)
    @symbol2 = Gamer.new(symbol == 'X' ? 'O' : 'X')
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @turn = true
  end

  def display
    lineone = "        #{board[0]} | #{board[1]} | #{board[2]} "
    linetwo = '      -------------'
    linethree = "        #{board[3]} | #{board[4]} | #{board[5]} "
    linefour = '      -------------'
    lineafive = "        #{board[6]} | #{board[7]} | #{board[8]} "
    "#{lineone}\n#{linetwo}\n#{linethree}\n#{linefour}\n#{lineafive}"
  end

  def valid_movements?(position)
    (position.positive? && position < 10) && board[position.to_i - 1] == ' '
  end

  def move(position)
    board[position.to_i - 1] = @turn ? @symbol1.symbol : @symbol2.symbol
    @turn = !@turn
  end

  def full?
    board.none? ' '
  end

  def win?
    winner = !@turn ? @symbol1.symbol : @symbol2.symbol
    if board[0..2].all?(winner) || 
       board[3..5].all?(winner) ||
       board[6..8].all?(winner) ||
       [board[0], board[3], board[6]].all?(winner) ||
       [board[1], board[4], board[7]].all?(winner) ||
       [board[2], board[5], board[8]].all?(winner) ||
       [board[0], board[4], board[8]].all?(winner) ||
       [board[2], board[4], board[6]].all?(winner)
      winner = "#{winner} wins!"
    end
    winner
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
