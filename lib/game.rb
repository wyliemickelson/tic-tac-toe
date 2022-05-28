require_relative 'display.rb'
require 'byebug'
class Game
  include Display

  attr_reader :board, :player_1, :player_2, :current_player

  def initialize
    @board = nil
    @player_1 = nil
    @player_2 = nil
    @current_player = nil
  end

  def play
    set_up
    board.display_board
    @current_player = player_2
    until game_over?
      if current_player.equal?(player_2)
        @current_player = player_1
      else
        @current_player = player_2
      end
      turn(current_player)
    end
    if draw?
      puts display_draw
    else
      puts display_game_over(current_player)
    end
    play if play_again?
    puts display_tfp
  end

  def play_again?
    print display_play_again_prompt
    gets.chomp.downcase == "y"
  end

  def create_player(p_num)
    Player.new(name_input(p_num), symbol_input(p_num), p_num)
  end

  def set_up
    @player_1 = create_player(1)
    @player_2 = create_player(2)
    @board = Board.new
  end

  def turn(player)
    pos = pos_input(player)
    @board.update_board(pos, player.symbol)
    board.display_board
  end

  def game_over?
    winner = Board.WINNING_COMBOS.any? do |combo|
      combo.all? { |pos| board.cells[pos] == current_player.symbol }
    end
    draw = draw?
    winner || draw
  end

  def draw?
    board.cells.all? { |cell| cell == player_1.symbol || cell == player_2.symbol }
  end

  def name_input(p_num)
    print display_name_prompt(p_num)
    gets.chomp
  end

  def symbol_input(p_num)
    print display_symbol_prompt(p_num)
    gets.chomp
  end

  def pos_input(player)
    print display_turn_input(player)
    gets.chomp.to_i
  end
end