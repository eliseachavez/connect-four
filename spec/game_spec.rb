# frozen_string_literal: true

require_relative '../lib/game'
require_relative '../lib/board'

describe Game do
  subject(:game) { described_class.new }

  describe '#intro' do # PASS
    it 'introduces the game, and prints an empty board' do
      printout = "Welcome to Connect 4\n\n" \
      "Here is the current board:\n" \
      "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
      "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
      "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
      "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
      "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
      "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m" \
      "\n\nTo choose the top left spot, for example, \n" \
      "the coordinate would be 1, 1 (row, column).\n" \
      "Select your coordinates one at a time.\n" \
      "Wait for the prompt.\n"
      expect { game.intro }.to output(printout).to_stdout
    end
  end

  describe '#set_slot' do
    it 'sends message to and is received by board' do
      board = double("board")
      x = 1
      y = 1
      allow(board).to receive(:set_slot).with(x, y)
      
      expect(board).to receive(:set_slot).with(x, y)
      game.set_slot
    end
  end

  describe '#select' do
    # need to make a double for board, and stub the board.available?(x,y) and board.print methods
    xit 'reflects on the board that the correct slot was set with select method' do
      board = Board.new
      result = game.select(1, 1)
      string = "Tile is available!\n\n " \
               "Here is the current board:\n" \
               "\e[94m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
               "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
               "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
               "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
               "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
               "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m"
      expect(result).to eq(string)
    end
    xit 'prints board with correct tile after selection' do
    end
  end
end
