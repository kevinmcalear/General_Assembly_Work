def anagram(word1, word2)
  word1 = word1.split("").sort
  word2.each do |word|
    word = word.split("")
    sorted_word = word.sort

    if sorted_word == word1 
      return word.join("")
    end

  end

end



