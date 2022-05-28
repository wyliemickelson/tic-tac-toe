class Player
  attr_reader  :name, :symbol, :number

  def initialize(name, symbol, number)
    @name = name
    @game_symbol = symbol
    @number = number
  end
end