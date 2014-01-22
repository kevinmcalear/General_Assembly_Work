def c_to_f(temp)
  return temp * 9 / 5 + 32
end

def c_to_k(temp)
  return temp + 273
end

def f_to_c(temp)
  return (temp - 32) * 5 / 9
end

def f_to_k(temp)
  return c_to_k(f_to_c(temp))
end

def k_to_c(temp)
  return temp - 273
end

def k_to_f(temp)
  return c_to_f(k_to_c(temp))
end


puts "Please enter a temperature:"
temp = gets.chomp.to_f
puts "Is this celsius, fahreheit, or kelvin (c, f, or k)?"
temp_unit = gets.chomp
puts "What would you like to convert to (c, f, or k)?"
temp_convert = gets.chomp

def which_conversion(temp_old, temp_new, temp)
  if temp_old == temp_new
    return temp

  elsif temp_old == 'f' && temp_new == 'c'
    return f_to_c(temp)

  elsif temp_old == 'k' && temp_new == 'c'
    return k_to_c(temp)

  elsif temp_old == 'f' && temp_new == 'k'
    return f_to_k(temp)

  elsif temp_old == 'c' && temp_new == 'k'
    return c_to_k(temp)

  elsif temp_old == 'c' && temp_new == 'f'
    return c_to_f(temp)
    
  else temp_old == 'k' && temp_new == 'f'
    return k_to_f(temp)
  end
end

answer = which_conversion(temp_unit, temp_convert, temp).to_f

puts "#{temp} degrees #{temp_unit} = #{answer.round(2)} degrees #{temp_convert}"
