class Player
  attr_reader :game_symbol
  attr_accessor :my_turn

  def initialize(game_symbol)
    @my_turn = false
    @game_symbol = game_symbol
  end
end