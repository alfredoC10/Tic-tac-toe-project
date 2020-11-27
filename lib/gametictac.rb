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
    if board[0] == 'X' && board[1] == 'X' && board[2] == 'X' ||
       board[3] == 'X' && board[4] == 'X' && board[5] == 'X' ||
       board[6] == 'X' && board[7] == 'X' && board[8] == 'X' ||
       board[0] == 'X' && board[3] == 'X' && board[6] == 'X' ||
       board[1] == 'X' && board[4] == 'X' && board[7] == 'X' ||
       board[2] == 'X' && board[5] == 'X' && board[8] == 'X' ||
       board[0] == 'X' && board[4] == 'X' && board[8] == 'X' ||
       board[2] == 'X' && board[4] == 'X' && board[6] == 'X'
      'X won!'
    elsif board[0] == 'O' && board[1] == 'O' && board[2] == 'O' ||
          board[3] == 'O' && board[4] == 'O' && board[5] == 'O' ||
          board[6] == 'O' && board[7] == 'O' && board[8] == 'O' ||
          board[0] == 'O' && board[3] == 'O' && board[6] == 'O' ||
          board[1] == 'O' && board[4] == 'O' && board[7] == 'O' ||
          board[2] == 'O' && board[5] == 'O' && board[8] == 'O' ||
          board[0] == 'O' && board[4] == 'O' && board[8] == 'O' ||
          board[2] == 'O' && board[4] == 'O' && board[6] == 'O'
      'O won!'
    else
      'No winner'
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
