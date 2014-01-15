def celsius_to_kelvin(temp)
  return temp + 273.15
end

def celsius_to_fahrenheit(temp)
  return temp * (9/5) + 32
end

def fahrenheit_to_celsius(temp)
  return (temp - 32) * (5/9)
end

def fahrenheit_to_kelvin(temp)
  return (temp + 459.67) * (5/9)
end

def kelvin_to_celsius(temp)
  return temp - 273.15
end

def kelvin_to_fahrenheit
  return temp * (9/5) - 459.67
end

def main()
  
  input = nil

  while input == nil
    puts "\e[H\e[2J"
    puts "Please enter a unit of temperature measurement:"
    puts "(F)ahrenheit    |   (C)elsius   |   (K)elvin    |   (Q)uit\n\n"
    
    input = gets.chomp
    case input
    when "F"
      units = "F"
    when "C"
      units = "C"
    when "K"
      units = "K"
    when "Q"
      return nil
    else
      input = nil
    end

    while input != nil
      puts "\n\nWhat unit do you want to convert to?"
      puts "(F)ahrenheit    |   (C)elsius   |   (K)elvin    |   (Q)uit\n\n"
      
      input = gets.chomp
      case input
      when "F"
        to_units = "F"
      when "C"
        to_units = "C"
      when "K"
        to_units = "K"
      when "Q"
        return nil
      else
        input = nil
      end

      while input != nil
        print "Temperature to convert: "
        temp = gets.chomp.to_f.round(2)

        puts "#{temp}°#{units} ==> #{
        case units
        when "F"
          case to_units
          when "C"
            fahrenheit_to_celsius(temp)
          when "K"
            fahrenheit_to_kelvin(temp)
          when "F"
            temp
          end
        
        when "C"
          case to_units
          when "F"
            celsius_to_fahrenheit(temp)
          when "K"
            celsius_to_kelvin(temp)
          when "C"
            temp
          end

        when "K"
          case to_units
          when "F"
            kelvin_to_fahrenheit(temp)
          when "C"
            kelvin_to_celsius(temp)
          when "K"
            temp
          end  
        end
        }°#{to_units}\n\n"

        input = nil
        gets()
      end
    end
  end

  gets()
  return nil
end


main()