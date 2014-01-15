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
  elsif temp_new == 'c' && temp_old == 'f'
    return f_to_c(temp)
  elsif temp_new == 'c' && temp_old == 'k'
    return puts k_to_c(temp)
  elsif temp_new == 'k' && temp_old == 'f'
    return puts f_to_k(temp)
  elsif temp_new == 'k' && temp_old == 'c'
    return puts c_to_k(temp)
  elsif temp_new == 'f' && temp_old == 'c'
    return puts c_to_f(temp)
  else temp_new == 'f' && temp_old == 'k'
    return puts k_to_f(temp)
  end
end

answer = which_conversion(temp_unit, temp_convert, temp).to_f

puts "#{temp} degrees #{temp_unit} = #{answer} degrees #{temp_convert}"
