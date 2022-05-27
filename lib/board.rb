require_relative 'player.rb'
require 'byebug'

class Board

  @@WINNING_COMBOS = [ [1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 6], [3, 6, 9] ]
  attr_reader :cells

  def initialize
    @cells = Array.new(9)
    @cells.map!.with_index { |cell, index| cell = index }
  end

  def display_board
    puts <<-HEREDOC
       #{cells[0]} | #{cells[1]} | #{cells[2]}
      ---+---+---
       #{cells[3]} | #{cells[4]} | #{cells[5]}
      ---+---+---
       #{cells[6]} | #{cells[7]} | #{cells[8]}
    HEREDOC
  end

  def update_board(cell, symbol)
    @cell = symbol
  end
end