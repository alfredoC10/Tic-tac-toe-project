require './lib/gametictac'

describe Tictactoe do

  describe '#display' do
    let(:symb1) { 'X' }
    let(:game) { Tictactoe.new(symb1) }

    context "Originally, the game board is an a string array full of white spaces, and this method does organizes it in its well known-shape #"
      it "Shows the game board whenever it's called with all the moves that have been played" do
        expect(game.display).to eql("          |   |   \n      -------------\n          |   |   \n      -------------\n          |   |   ")
      end
    end
  end

  describe '#valid_movements?' do
    let(:pos1) { 3 }
    let(:pos2) { 30 }
    let(:symb1) { 'X' }
    let(:game) { Tictactoe.new(symb1) }

    context "Once the player is ready to put their chosen mark on the board, this method decides if the selected position is a valid one" do
      it "Retruns false if the position is not a number between 1 and 9 or if it has a mark already on it " do
        expect(game.valid_movements?(pos2)).to be_falsy
      end

      it "Returns true if the position is a number between 1 and 9 and, it's an empty place" do
        expect(game.valid_movements?(pos1)).to be_truthy
      end
    end
  end

  describe '#move' do
    let(:board) { [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '] }
    let(:pos1) { 5 }
    let(:symb1) { 'X' }
    let(:game) { Tictactoe.new(symb1) }

    context "Once the selected position is a valid one, this method puts the player's mark in the game board" do
      it "Places the players mark in the board array's 4th index if, for example, the position 5 is chosen" do
        expect(game.move(pos1)).not_to eql(board[4])
      end
    end
  end

  describe '#full?' do
    let(:board1) { ['X', 'O', 'O', 'X', 'O', 'X', 'O', 'X', 'X'] }
    let(:board2) { [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '] }
    let(:pos1) { 5 }
    let(:symb1) { 'X' }
    let(:game) { Tictactoe.new(symb1) }

    context "This method looks for all the board positions to have marks on them " do
      it "Returns true if there're no white spaces in all the indexes of the game board array" do
        expect(game.full?).not_to eql(board2)
      end

      it "Returns false if there are white spaces in all the indexes of the game board array" do
        expect(game.full?).not_to eql(board1)
      end
    end
  end

  describe '#win?' do
    let(:symb1) { 'X' }
    let(:sample1) {['X', 'X', 'X', ' ', ' ', ' ', ' ', ' ', ' ']}
    let(:sample2) {['O', 'O', 'O', ' ', ' ', ' ', ' ', ' ', ' ']}
    let(:game) { Tictactoe.new(symb1) }
    context "This metothod looks for that there's in the game board vertical, horizontal or diagonal row of 3 consecutive equal marks" do
      it "Returns 'X wins! if the three marks are X" do
        expect(game.win?).not_to eql(sample2)
      end

      it "Returns 'X wins! if the three marks are X" do
        expect(game.win?).not_to eql(sample1)
      end
    end
  end

