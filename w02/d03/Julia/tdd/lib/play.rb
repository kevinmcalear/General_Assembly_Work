def add(a, b)
  return a + b
end

def odds(numbers)
  return numbers.select do |number| 
    number.odd?
  end
end

def palindrome(word)
  uniform = word.downcase.strip
  return uniform.length > 1 && uniform == uniform.reverse
end

def rps(player_one, player_two)
  beats = {
    "scissors" => "rock", 
    "paper" => "scissors",
    "rock" => "paper"
  }
  if beats[player_one[:play]] == player_two[:play]
    puts "#{player_two[:name]} wins!"
  else
    return "#{player_one[:name]} wins!"
  end
end