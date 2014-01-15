def menu
  puts "********WELCOME TO MY CALCULATOR********"
  puts 
  puts "please tell me what you want to do:"
  puts "(b)asic calculation (a)dvanced calculation or (q)uit"
  input = gets.chomp
  return input
end

input = menu
while input != "q"

  case input

  when "b"
    puts "Please tell me if you want to:"
    puts "(a)dd (s)ubtract (m)ultiply (d)ivide or anything else to go back"
    basic_input = gets.chomp

  when "a"
    puts "Please tell me if you want to:"
    puts "(e)xponents (s)quare (t)rig (f)actorial roots or anything else to go back"
    advanced_input = gets.chomp
  end

  case basic_input

  when "a"
    puts "Tell me the first number you want to add."
    num_one = gets.chomp.to_i
    puts "Now the number you want to add please."
    num_two = gets.chomp.to_i
    added_num = num_one + num_two
    puts "Your Answer Was: #{added_num}"

  when "s"
    puts "Tell me the first number you want."
    num_one = gets.chomp.to_i
    puts "Now the number you want to subtract by please."
    num_two = gets.chomp.to_i
    subtracted_num = num_one - num_two
    puts "Your Answer Was: #{subtracted_num}"

  when "m"
    puts "Tell me the first number you want."
    num_one = gets.chomp.to_i
    puts "Now the number you want to multiply by please."
    num_two = gets.chomp.to_i
    subtracted_num = num_one * num_two
    puts "Your Answer Was: #{subtracted_num}"

  when "d"
    puts "Tell me the first number you want."
    num_one = gets.chomp.to_i
    puts "Now the number you want to divide by please."
    num_two = gets.chomp.to_i
    subtracted_num = num_one / num_two
    puts "Your Answer Was: #{subtracted_num}"
  end

  case advanced_input

  when "e"
    puts "Tell me the base number you want."
    num_one = gets.chomp.to_i
    puts "Now the exponent you want to use please."
    num_two = gets.chomp.to_i
    exponent_num = num_one ** num_two
    puts "Your Answer Was: #{exponent_num}"

  when "s"
    puts "Tell me number you want to square."
    num = gets.chomp.to_i
    squarert_num = Math.sqrt(num) 
    puts "Your Answer Was: #{squarert_num.to_i}"

  when "t"
    puts "Tell me number you want to do trig on."
    trig_num = gets.chomp.to_i
    puts "Tell me if you want to do (s)in, (c)osin, or (t)an on this."
    trig_function = gets.chomp
    case trig_function
    when "s"
      puts "Your Answer: #{sin(Math.trig_num)}"
    when "c"
      puts "Your Answer: #{Math.cos(trig_num)}"
    when "t"
      puts "Your Answer: #{Math.tan(trig_num)}"
    else
      puts "Sorry, that wasn't a valid input!"
    end 

  when "f"
    puts "Tell me the factorial you want to do."
    factorial = gets.chomp.to_i
    counter = factorial - 1
    while counter > 1
      factorial = factorial * counter
      counter -= 1
    end
    puts factorial

    if input == "q"
      puts "Thanks for using me!"
    end

    input = menu
  end
end