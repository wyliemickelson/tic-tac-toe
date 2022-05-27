class Player
  attr_reader :symbol, :name

  def initialize(name, symbol)
    @name = name
    @game_symbol = symbol
  end
end