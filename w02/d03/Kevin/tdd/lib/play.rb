def add(a, b)
  return a + b
end

def odds(array)
  return array.select {|num| num.odd? }
end

def is_palendrom?(word)
  uniform = word.downcase.strip
  return uniform == uniform.reverse && uniform.size > 1
end

def rps(player_one, player_two)

  beats = {
    "scissors" => "rock",
    "paper" => "scissors",
    "rock" => "paper"
  }
 
  if beats[player_one[:play]] == player_two[:play]
    return "#{player_two[:name]} wins!"

elsif beats[player_two[:play]] == player_one[:play]
  return "#{player_one[:name]} wins!"

else
  return "It's a tie folks!"
end
end