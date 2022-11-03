# frozen_string_literal: true

require_relative '../lib/board'

# class for directing gameplay
class Game
  def initialize
    @board = Board.new
  end
  def begin
    "Welcome to Connect 4\n\n" \
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
  end

  def select(x, y)
    if @board.availabe?(x,y)
      "Tile is available!\n\n "
    else
      "Tile is not available, try again!\n\n "
    end
     board.print
  end
end
