counter = 0
candies = ["mars bar", "twix", "100 garnd"]

while counter < candies.count
  puts candies[counter]
  counter += 1
end

candies.each do |x|
  puts x
end