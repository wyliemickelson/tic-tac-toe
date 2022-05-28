class Board

  @@WINNING_COMBOS = [ [0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6] ]
  attr_reader :cells, :WINNING_COMBOS

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
       #{cells[6]} | #{cells[7]} | #{cells[8]}\n
    HEREDOC
  end

  def update_board(pos, symbol)
    @cells[pos] = symbol
  end

  def self.WINNING_COMBOS
    @@WINNING_COMBOS
  end
end