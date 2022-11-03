# frozen_string_literal: true

require_relative '../lib/game'
# require_relative '../lib/board'

describe Game do
  subject(:game) { described_class.new }
  describe '#begin' do
    it 'introduces the game, and prints an empty board' do
      result = game.begin
      printout = "Welcome to Connect 4\n\n" \
                 "Here is the current board: \n" \
                 "0 0 0 0 0 0 0\n" \
                 "0 0 0 0 0 0 0\n" \
                 "0 0 0 0 0 0 0\n" \
                 "0 0 0 0 0 0 0\n" \
                 "0 0 0 0 0 0 0\n" \
                 "0 0 0 0 0 0 0\n\n" \
                 "To choose the top left spot, for example, \n" \
                 "the coordinate would be 1, 1 (row, column).\n" \
                 "Select your coordinates one at a time.\n" \
                 "Wait for the prompt.\n"
      expect(result).to eq(printout)
    end
  end
  describe '#select' do
    it 'selects and available tile' do
      result = game.select(1, 1)
      string = "Tile is available!\n\n " \
               "Here is the current board:\n" \
               "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
               "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
               "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
               "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
               "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
               "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n"
      expect(result).to eq(string)
    end
    xit 'prints board with correct tile after selection' do
    end
  end
end
