def anagram(word, group_of_words)
	letters = word.split(//)
	length = letters.length
	combinations = letters.permutation.to_a
	new_words = combinations.map do |word|
		word.join
	end

	matched_words = group_of_words.select do |word|
		new_words.include?(word)
	end

	return matched_words[0]
end
