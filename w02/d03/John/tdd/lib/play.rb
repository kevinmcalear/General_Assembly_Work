def add(a, b)
  return a + b
end

def odds(array)
  return array.select {|elem| elem.odd?}
end

def palindrome?(word)
  uniform = word.downcase.strip
  return uniform.reverse == uniform && uniform.size > 1
end

def rps(player_one, player_two)
  beats = {
    "scissors" => "rock",
    "paper" => "scissors",
    "rock" => "paper"
  }

  # if player_one[:play] == player_two[:play]
  #   return "Tie!"
  if beats[player_one[:play]] == player_two[:play]
    return "#{player_two[:name]} wins!"
  else
    return "#{player_one[:name]} wins!"
  end
end