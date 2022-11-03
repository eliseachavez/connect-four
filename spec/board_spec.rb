# frozen_string_literal: true

require_relative '../lib/board'

describe Board do
  subject(:board) { described_class.new }
  describe '#availabe?' do
    it 'returns true when the slot is available' do
      result = board.available?(1, 1)
      expect(result).to be true
    end
    it 'returns false when the slot is unavailable' do
      board.set_slot(1, 1, 'player')
      result = board.available?(1, 1)
      expect(result).to be false
    end
  end
  describe '#set_slot' do
    it 'returns a board hash with the slot changed at the right coordinates' do
      board_hsh = {
        1 => ["\e[95m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m",
        "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m"],
        2 => ["\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", 
        "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m"],
        3 => ["\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m",
        "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m"],
        4 => ["\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m",
        "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m"],
        5 => ["\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m",
        "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m"],
        6 => ["\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m",
        "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m"]
      }
      result = board.set_slot(1, 1, 'player')
      expect(result).to eq(board_hsh)
    end
    it 'returns the right color for the player' do
      board.instance_variable_set(:@current_player, 'player')
      board_hsh = {
        1 => ["\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m",
        "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m"],
        2 => ["\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", 
        "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m"],
        3 => ["\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m",
        "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m"],
        4 => ["\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m",
        "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m"],
        5 => ["\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m",
        "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m"],
        6 => ["\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m",
        "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[95m\u25EF\e[0m"]
      }
      result = board.set_slot(6, 7, 'player')
      expect(result).to eq(board_hsh)
    end
    it 'returns the right color for computer' do
      board.instance_variable_set(:@current_player, 'computer')
      board_hsh = {
        1 => ["\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m",
        "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m"],
        2 => ["\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", 
        "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m"],
        3 => ["\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m",
        "\e[94m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m"],
        4 => ["\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m",
        "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m"],
        5 => ["\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m",
        "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m"],
        6 => ["\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m",
        "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m"]
      }
      result = board.set_slot(3, 5, 'computer')
      expect(result).to eq(board_hsh)
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
