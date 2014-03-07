def add(a, b)
  a + b
end

def odds(a)
  a.select{ |num| num%2 !=0}
end

def palindrome?(word)
  if word.length == 0
    return false
  else
    return word == word.reverse
  end
end

def rps(player_one, player_two)
  beats = {
    "scissors" => "rock",
    "paper" => "scissors",
    "rock" => "paper"
  }

  #compare player one play and player two play

  if player_one[:play] == player_two[:play]
    return "Tie!"
  elsif beats[player_one[:play]] == player_two[:play]
    return player_two[:name] + " wins!"
  else
    return player_one[:name] + " wins!"
  end

end
