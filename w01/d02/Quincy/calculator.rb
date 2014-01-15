puts "(B)asic (A)dvanced (Q)uit"
answer = gets.chomp.upcase

while answer != "Q"
  if answer == "B"
    puts "(A)ddition (S)ubtraction (M)ultiplication (D)ivision"
    basic = gets.chomp.upcase
      if basic == "A"
        puts "First number?"
        First = gets.chomp.to_i
        puts "Second number?"
        Second = gets.chomp.to_i
        puts "The answer is #{First+Second}"
      elsif basic == "S"
        puts "First number?"
        FirstS = gets.chomp.to_i
        puts "Second number?"
        SecondS = gets.chomp.to_i
        puts "The answer is #{FirstS-SecondS}"
      elsif basic == "M"
        puts "First number?"
        FirstM = gets.chomp.to_i
        puts "Second number?"
        SecondM = gets.chomp.to_i
        puts "The answer is #{FirstM*SecondM}"
      else
        puts "First number?"
        FirstD = gets.chomp.to_i
        puts "Second number?"
        SecondD = gets.chomp.to_i
        puts "The answer is #{FirstD/SecondD}"
      end
    end
  end