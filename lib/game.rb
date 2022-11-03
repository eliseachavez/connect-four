# frozen_string_literal: true

require_relative '../lib/board'

# class for directing gameplay
class Game
  def initialize
    @board = Board.new
    @current_player = 'player'
  end

  def intro
    puts "Welcome to Connect 4\n\n#{@board.print}" \
    "\n\nTo choose the top left spot, for example, \n" \
    "the coordinate would be 1, 1 (row, column).\n" \
    "Select your coordinates one at a time.\n" \
    "Wait for the prompt.\n"
  end

  def select(x, y)
    if @board.availabe?(x,y)
      "Tile is available!\n\n "
      @board.set_slot(x, y. @current_player)
      @board.print
    else
      "Tile is not available, try again!\n\n "
    end
     board.print
  end
end
Game.new.intro
