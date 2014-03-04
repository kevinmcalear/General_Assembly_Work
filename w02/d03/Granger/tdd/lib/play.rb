def add(first, second)
  first + second
end

def odds(arr)
  arr.select {|el| el.odd?}
end

def palindrome?(str)
  str = str.downcase.rstrip
  str == str.reverse && str.size > 1
end


def rps(player1, player2)
  beats = {
    "rock" => "scissors",
    "scissors" => "paper",
    "paper" => "rock"
  }
  if beats[player1[:play]] == player2[:play]
    return "#{player1[:name]} wins!"
  elsif beats[player2[:play]] == player1[:play]
    return "#{player2[:name]} wins!"
  else
    return "draw"
  end
end