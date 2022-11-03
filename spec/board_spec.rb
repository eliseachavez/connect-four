# frozen_string_literal: true

require_relative '../lib/board'

describe Board do
  subject(:board) { described_class.new }
  describe '#availabe?' do
    it 'returns true when the slot is available' do
      result = board.available?(1, 1)
      expect(result).to be true
    end
  end
  describe '#print' do
    it 'prints out the current board' do
      str = "Here is the current board:\n" \
      "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
      "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
      "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
      "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
      "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m\n" \
      "\e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m \e[91m\u25EF\e[0m"
      result = board.print
      expect(result).to eq(str)
    end
  end
end