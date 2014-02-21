require 'pry'


def find_anagrams(given_word, words_array)
  given_letters = given_word.split("").sort
  anagrams = words_array.select do |word| 
    given_letters == word.split("").sort
  end
  return anagrams.join(", ")
end
