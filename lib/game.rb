require_relative 'display.rb'

class Game
  include Display

  attr_reader :board, :player_1, :player_2, :current_player

  def initialize
    @board = Board.new
    @player_1 = nil
    @player_2 = nil
    @current_player = nil
  end

  def play
    set_up
    turn(current_player)
  end

  def create_player(p_num)
    Player.new(name_input(p_num), symbol_input(p_num), p_num)
  end

  def set_up
    @player_1 = create_player(1)
    @player_2 = create_player(2)
    @current_player = player_1
  end

  def turn(player)
    pos = pos_input(player)
  end

  def name_input(p_num)
    puts display_name_prompt(p_num)
    gets.chomp
  end

  def symbol_input(p_num)
    puts display_symbol_prompt(p_num)
    gets.chomp
  end

  def pos_input(player)
    puts display_turn_input(player)
  end
end