module Display 

  def display_name_prompt(number)
    "Enter name for player #{number}: "
  end

  def display_symbol_prompt(number)
    "Enter a single character symbol for player #{number}: "
  end

  def display_turn_input(player)
    "Player #{player.number} - #{player.name}: Enter an unfilled position to place your #{player.symbol}."
  end
end