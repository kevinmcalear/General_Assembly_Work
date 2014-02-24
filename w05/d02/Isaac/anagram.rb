def is_anagram?(word, word2)
  word.downcase.split("").sort == word2.downcase.split("").sort
end

def anagrams(word, word_array)
  anagrams = []
  word_array.each do |w|
    anagrams << w if is_anagram?(word, w)
  end
  return anagrams
end

puts anagrams("listen", %w(enlists google inlets banana))

