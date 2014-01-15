puts "Welcome to the Calculator"
puts "Please choose a function below you would like to run:"
puts "(A)ddition, (S)ubtraction, (M)ultiplication, (D)ivision, or (Q)uit"

function = gets.chomp.downcase

while function != "q"

puts "Please enter a number."

num1 = gets.chomp.to_i

puts "Please enter a second number."

num2 = gets.chomp.to_i

  if function == "a"
    puts "#{num1} + #{num2} = #{num1 + num2}"

  elsif function == "s"
    puts "#{num1} - #{num2} = #{num1 - num2}"

  elsif function == "m"
    puts "#{num1} x #{num2} = #{num1 * num2}"

  elsif function == "d"
    puts "#{num1} / #{num2} = #{num1 / num2}"
      
  end

puts "Welcome to the Calculator"
puts "Please choose a function below you would like to run:"
puts "(A)ddition, (S)ubtraction, (M)ultiplication, (D)ivision, or (Q)uit"

function = gets.chomp.downcase

end

