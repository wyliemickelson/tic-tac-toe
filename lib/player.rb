class Player
  attr_reader  :name, :symbol, :number

  def initialize(name, symbol, number)
    @name = name
    @symbol = symbol
    @number = number
  end
end