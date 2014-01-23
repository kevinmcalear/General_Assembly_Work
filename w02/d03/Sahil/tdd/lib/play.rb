def add(a,b)
  a + b
end

def odd_finder(a)
  a.delete_if { |num| num.even? }
end

def even(num)
  num.even?
end

def palindrome?(word)
  word = word.downcase.strip
  return word == word.reverse && word.size > 1
end

def rps(player_one, player_two)
  beats = {
    "scissors" => "rock",
    "paper" => "scissors",
    "rock" => "paper"
  }
  if beats[player_one[:play]] == player_two[:play]
      return "#{player_two[:name]} wins!"
  elsif  beats[player_two[:play]] == player_one[:play]
    return "#{player_one[:name]} wins!"
  end
end