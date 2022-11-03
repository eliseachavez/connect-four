 # frozen_string_literal: true

 # "\e[91m\u25CF\e[0m"
    # "\e[91m\u25CB\e[0m"
    # Black: \u001b[30m
    # Red: \u001b[31m
    # Green: \u001b[32m
    # Yellow: \u001b[33m
    # Blue: \u001b[34m
    # Magenta: \u001b[35m
    # Cyan: \u001b[36m
    # White: \u001b[37m
    # Reset: \u001b[0m
    # Bright Black: \u001b[30;1m
    # Bright Red: \u001b[31;1m
    # Bright Green: \u001b[32;1m
    # Bright Yellow: \u001b[33;1m
    # Bright Blue: \u001b[34;1m
    # Bright Magenta: \u001b[35;1m
    # Bright Cyan: \u001b[36;1m
    # Bright White: \u001b[37;1m
    # Reset: \u001b[0m

# Class for board data
class Board
  attr_reader :board

  def initialize
    @board_slots = {
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
      "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m", "\e[91m\u25EF\e[0m"]
    }
  end

  def print
    str = "Here is the current board:\n"
    str + board_slot_string
  end

  def available?(x, y)
    @board_slots[x][y] == "\e[91m\u25EF\e[0m" ? true : false # "\e[91m\u25EF\e[0m" is the available slot
  end

  def set_slot(x, y, player)
    if player == 'player'
      @board_slots[x][y - 1] = "\e[95m\u25EF\e[0m"
    else
      @board_slots[x][y - 1] = "\e[94m\u25EF\e[0m"
    end
    @board_slots
  end

  private

  def board_slot_string
    str = []
    super_arr = []
    @board_slots.each_value do |array| # iterates through each array in the hash
      array.each do |array_item|
        str << array_item
      end
      super_arr << str.join(' ')
      str.clear
    end
    super_arr.join("\n")
  end
end
