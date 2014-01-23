def add(a, b)
  return a + b
end

def odd(numbers)
  return numbers.select do |num|
    num.odd?
  end
end

def palindrome?(word)
  uniform = word.downcase.strip
  return uniform == uniform.reverse && word.size > 1
end

def rps(player_one, player_two)
  beats = {
    "scissors" => "rock",
    "paper" => "scissors",
    "rock" => "paper"
  }

  p1_play = player_one[:play]
  p2_play = player_two[:play]

  if beats[player_one[:play]] == player_two[:play]
    return "#{player_two[:name]} wins!"
    else
    return "#{player_one[:name]} wins!" 
  end
end

