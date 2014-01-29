# def add(a, b)
#   return a + b
# end

# def odds(numbers)
#   return numbers.select do |num|
#     num.odd?
#   end
# end

# def palindrome?(string)
#   test_string = string.downcase.strip

#   return test_string == test_string.reverse && test_string.size > 1
  
#   end


# def rps(player_one, player_two)
#   # if player_one[:play] == "scissors" && player_two[:play] == "rock"
#   #     return player_two[:name] + " wins!"


#   # return "Jeff wins!"

#   beats = {
#     "scissors" => "rock",
#     "rock" => "paper",
#     "paper" => "scissors"
#   }

#   # p1_play = player_one[:play]
#   # p2_play = player_two[:play]

#   if player_one[:play] == beats[player_two[:play]]
#     return player_two[:name] + " wins!"

#   else 
#     return player_one[:name] + " wins!"

#   end


# end

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
end



