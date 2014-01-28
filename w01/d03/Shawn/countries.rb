#USA : NYC, LA | burgers, hot dogs
#France: Paris | Nice, baguettes, croissants
#Italy: Rome, Pisa | pizza, pasta, more 

countries = {
    :usa => {
        :cities => ["NYC", "LA"], 
        :food => ["burgers", "dogs"]
    },
    :france => {
        :cities => ["Paris", "nice"],
        :food => ["baguettes", "french fries"]
    },
    :italy => {
        :cities => ["Rome", "Prego"],
        :food => ["pizza", "pasta"]
    }
}

#puts countries[:france][:cities].sample

def discuss_trip(countries, country)
  #I was just in NYC, USA and I really enjoyed the hot dogs.
puts "I was just in #{countries[country][:cities].sample}, #{country}
and I really enjoyed the 
#{countries[country][:food].sample}!!!"

end


# discuss_trip(countries, :usa)
# discuss_trip(countries, :france)
def pick_a_country(countries)
  return countries.keys.sample
end

def  lets_discuss(countries)
 pick_a_country(countries)

  puts "have you ever been to #{pick_a_country(countries)} 'Y' or 'N'"
  response = gets.chomp.upcase!
  if response == 'Y'
    discuss_trip(countries, country)
  elsif response == 'N'
    puts "You've never been to #{this_country}...maybe you should..."
  else
    puts "error"
  end
end

lets_discuss(countries)

