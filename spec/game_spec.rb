# frozen_string_literal: true

require_relative '../lib/game'
# require_relative '../lib/board'

describe Game do
  subject(:game) { described_class.new }
  describe '#begin' do
    it 'introduces the game, and prints an empty board' do # and prints the board' do
      result = game.begin
      printout = "Welcome to Connect 4\n\n" \
                 "Here is the current board: \n" \
                 "0 0 0 0 0 0 0\n" \
                 "0 0 0 0 0 0 0\n" \
                 "0 0 0 0 0 0 0\n" \
                 "0 0 0 0 0 0 0\n" \
                 "0 0 0 0 0 0 0\n" \
                 "0 0 0 0 0 0 0\n\n"
      expect(result).to eq(printout)
    end
  end
  describe '#select' do
    xit 'selects and available tile' do
      expect(Game.new.select(0, 0)).to eq("\n\n\n\n")
    end
    xit 'prints board with correct tile after selection' do
    end
  end
end
