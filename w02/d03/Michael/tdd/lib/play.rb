def add(a,b)
  return a + b 
end

def odd(numbers)
  return numbers.select {|num| num.odd?}
end

def palindrome(word)
  uniform = word.downcase.strip
  return uniform == uniform.reverse && uniform.size > 1
end

def rps(player_one, player_two)
  beats = {
    "scissors" => "rock",
    "paper" => "scisosrs",
    "rock" => "paper"
  }
  if  beats[player_one[:play]] == player_two[:two]
    return "#{player_two[:name]} Wins!"
  elsif p1_play == p2_play
    "No One Wins!"
  else player_one[:name] + " Wins!"
  end 

end
