def add(a, b)
  return a + b
end

def odds(numbers)
  return numbers.select do |num|
    num.odd?
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
else
  return "#{player_one[:name]} wins!"
end




  # if player_one beats[key] == player_two beats[value]
  #   puts player_one + "wins!"
  # elsif player_two beats[key] == player_one beats[value]
  #   puts player_two + "wins!"
  # else puts "it's a tie!"
 

end

