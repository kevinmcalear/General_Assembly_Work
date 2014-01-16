candies = ["mars", "twix", "100 grand"]

i = 0

while i < candies.size
	puts candies[i]
	i = i + 1
end

candies.each do |candy|
	puts candy
end