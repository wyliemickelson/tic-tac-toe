require_relative 'player.rb'
require 'byebug'

class Board
  attr_accessor :cells

  def initialize
    @cells = Array.new(3) {Array.new(3, " ")}
  end

  def display_board
    @cells.each do |row| 
      row.each_with_index do |cell, column| 
        print " #{cell} "
        print "|" unless column == 2
      end
      puts "\n ---------\n"
    end
  end

  def update_board(position, player)
    symbol = player.game_symbol
    row = position[0]
    column = position[1]
    @cells[row][column] = symbol
  end
end

# small testing
myBoard = Board.new
myBoard.display_board
puts "WWWWWWWWWWWWWWWWWWWWW"
p1 = Player.new('X')
# byebug
myBoard.update_board([0,0], p1)
myBoard.display_board