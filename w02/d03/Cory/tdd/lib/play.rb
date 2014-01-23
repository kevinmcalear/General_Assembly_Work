def add(a, b)
  return a + b
end

def odds(numbers)
  return numbers.select do |number|
    number.odd?
  end
end

def pal(name)
  uniform = name.downcase.strip
  return uniform == uniform.reverse && uniform.length > 1
end

def rps(player_one, player_two)
 beats = {
    "scissors" => "rock",
    "paper" => "scissors",
    "rock" => "paper"
 }

  if beats[player_one[:play]] == player_two[:play]
    return "#{player_two[:name]} wins!"
  else
    return "#{player_one[:name]} wins!"
  end
end