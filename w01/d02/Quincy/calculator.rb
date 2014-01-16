puts "(B)asic Ad(V)anced (Q)uit"
answer = gets.chomp.upcase

  if answer == "B"
    puts "(A)ddition (S)ubtraction (M)ultiplication (D)ivision (B)ack"
    basic = gets.chomp.upcase
      while basic != "B"
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
        elsif basic == "D"
          puts "First number?"
          FirstD = gets.chomp.to_i
          puts "Second number?"
          SecondD = gets.chomp.to_i
          puts "The answer is #{FirstD/SecondD}"
        elsif basic == "B"
        end
      end
  elsif answer == "V"
    puts "(E)xponents (S)quare Root Mai(N) Menu"
    advanced = gets.chomp.upcase
      while advanced != "N"
        if advanced == "E"
          puts "First number?"
          FirstE = gets.chomp.to_i
          puts "To what power?"
          SecondE = gets.chomp.to_i
          puts "The answer is #{FirstE**SecondE}"
        elsif advanced == "S"
          puts "The square root of?"
          FirstQ = gets.chomp.to_i
          puts "The answer is #{FirstQ**0.5}"
        elsif advanced == "N"
        end
      end
    elsif answer =="Q"
  end
