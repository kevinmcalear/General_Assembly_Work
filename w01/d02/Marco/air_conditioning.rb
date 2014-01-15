puts "What is the current temperature?"

actual_temp = gets.chomp.to_i

puts "Is your air conditioner working?"

ac = gets.chomp.downcase

  if ac == "yes"
    ac_working = true
  elsif ac == "no"
    ac_working = false
  else
    puts "Please enter your answer as Yes or No"
    ac_working = gets.chomp.downcase
  end
      


puts "What temperature would you prefer?"

preferred_temp = gets.chomp.to_i



  if (actual_temp > preferred_temp) && ac_working
    puts "Turn on the A/C Please"


  elsif (actual_temp > preferred_temp) && (ac_working == false)
    puts "Fix the A/C now!  It's hot!"

 elsif (actual_temp < preferred_temp) && (ac_working == false)
    puts "Fix the A/C whenever you have the chance...  It's cool..."

  else
    puts "No air conditioner needed!"
  end

  