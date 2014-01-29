def add(a,b)
  return a + b
end

#odds takes an array of numbers an returns the odd numbers in an array
#[1, 2, 3] => [1, 3]
#[2,4,6] => []
#[] => []

def odd(numbers)
   return numbers.select do |number|
    number.odd?
  end
  end

def palindrome_test(palindrome)
  uniform = palindrome.downcase.strip
   uniform == uniform.reverse && uniform.size > 1
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












