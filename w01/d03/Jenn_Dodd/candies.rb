candies = ["mars bar", "twix", "100 Grand"]

counter = 0

while counter < candies.count
	puts candies[counter]
	x += 1
end

OR

candies.each do |candy|
	puts candy
end

