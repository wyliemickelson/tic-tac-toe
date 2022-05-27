class Player
  attr_reader  :name, :game_symbol

  def initialize(name, game_symbol)
    @name = name
    @game_symbol = game_symbol
  end
end