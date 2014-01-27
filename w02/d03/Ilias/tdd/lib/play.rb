def add(a, b)
  a + b
end

def odds(array)
  return array.select { |num| num.odd? }
end

def palindrome(word)
  reversed_word = word.split("").reverse
  if word == reversed_word.join
    return true
  else
    false
  end
end

def palindrome?(word)
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
    return "it's a tie!"
  end
end