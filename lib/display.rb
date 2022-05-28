module Display 

  def display_name_prompt(number)
    "Enter a name for player #{number}: "
  end

  def display_symbol_prompt(number)
    "Enter a single character symbol for player #{number}: "
  end

  def display_turn_input(player)
    "Player #{player.number} - #{player.name}: Enter an unfilled position to place your #{player.symbol}: "
  end

  def display_game_over(player)
    "Congratulations, #{player.name}! You Win!"
  end

  def display_play_again_prompt
    "Would you like to play again? (y/n): "
  end

  def display_tfp
    "Thanks for playing!"
  end
end