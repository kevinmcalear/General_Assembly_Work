  def odds(array)
    return array.select do |number|
      number.odd?
    end
  end

  def word(word)
    uniform = word.downcase.strip
    return uniform == uniform.reverse && uniform.size > 1
  end

  def rps(player_one, player_two)
    beats = {
      "scissors" => "rock",
      "paper" => "scissors",
      "rock" => "paper"
    }
    if player_two[:play] == beats[player_one[:play]]
      return "#{player_two[:name]} wins!"
    elsif beats[player_two[:play]] == player_one[:play]
      return "#{player_one[:name]} wins!"
    end
  end
