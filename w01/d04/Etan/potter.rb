def question1
	all_names = potter_hash.each do |hash| 
	puts hash[:name]
	end
end

def question2
	five_hundred_mention = potter_hash.each do |hash|
		if hash[:mention].to_i > 500
			puts hash
		end
	end
end

def question3
	potter_houses = potter_hash.each do |hash| 
		puts hash[:school]
	end
end

def question4
	all_names = potter_hash.reject do |hash| 
		hash[:name].include?" "
	end 
end

def question5
	all_names = potter_hash.each do |hash| 
		if hash[:school].to_s.include?"Hufflepuff"
			puts hash[:name]
		end
	end
end

def question6
	all_names = potter_hash.each do |hash| 
		if hash[:school].to_s.include?"Slytherin"
			puts hash[:name].reverse
		else
			puts hash[:name]
		end
	end
end

def question7

	potter_last = potter_hash.map {|hash| hash[:name].split.last}

	print potter_last.uniq

end

def question8

	split_potter = potter.split("\n")

	array_potter = split_potter.map {|x| x.split(",")}

	potter_hash = array_potter.map do |x| {:mention => x[0], :name => x[1], :school => x[2] } end

	magical_names = potter_hash.map do |hash| hash[:name] end

	weasley_names = magical_names.select do |hash| hash.include?"Weasley" end

	print weasley_names.map {|hash| hash.gsub(" ", " Badger ")}

end

def question9

	potter_names = potter_hash.map do |hash| 
	  hash[:name].split.first
	end

	names_ending_in_y = potter_names.select do |name|
	  name.end_with?("y")
	end

	print potter_names
	print names_ending_in_y
end


f = File.open("potter.csv", "r")

potter = f.read



f.close




# potter_names = [] .gsub(" ", " Badger ")


# potter_hash.each do |hash| 
#   potter_names << hash[:name].split.first
# end


=begin

insert(1, "Badger")

.end_with?("y")

all_names = []


potter_hash.each do |hash| 
	if hash[:school].to_s.include?"Gryffindor"
		all_names << hash[:name]
	end
end

split_names = all_names.split
=end