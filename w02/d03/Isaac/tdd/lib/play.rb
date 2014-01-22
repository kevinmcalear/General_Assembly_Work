def add(num1, num2)
  num1 + num2
end

def odds(numbers)
  return numbers.select do |num|
    num.odd?
  end
end

def palindrome?(word)
  uniform = word.downcase.chomp.strip
  return uniform == uniform.reverse && uniform.size > 1
end

def rps(player_one, player_two)
  beats = { scissors: "rock", paper: "scissors", rock: "paper" }
  

end