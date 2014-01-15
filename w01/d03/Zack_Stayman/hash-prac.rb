countries = 
{
  :usa => {
    :city => ["NYC", "LA"], 
    :food => ["Burgers", "Hot Dogs"]
  },

  :france => {
    :city => ["Paris", "Nice"],
    :food => ["baguettes", "croissants"]
  },

  :italy => {
    :city => ["Rome", "Pisa"], 
    :food => ["Pizza", "Pasta", "More"]
  }
}


  def discuss_trip(countries, country)
    x = countries[country]
    case country
    when :france
      return "You haven't been to France"
    else
      if country == :usa
        place = country.upcase
      else
        place = country.capitalize
      end
    return "I was just in #{x[:city].sample}, #{place} and I really enjoyed the #{x[:food].sample}."
  end
  end

puts "What country did you go to?"
country = gets.chomp.downcase.to_sym
  puts discuss_trip(countries, country)