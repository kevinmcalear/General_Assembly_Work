counter = 0 
candies = ["mars bar", "twix", "100 grand"]

while counter < candies.count
  puts candies[counter]
  counter += 1
end

candies.each do |candy|
  puts candy
end

movies = {:pj => "Tommy", :jeff => "Blade Runner", :peter => "The s
  Lion King"}

movies.each do |name, movie|
  puts "#{name.capitalize} really likes #{movie}"
end