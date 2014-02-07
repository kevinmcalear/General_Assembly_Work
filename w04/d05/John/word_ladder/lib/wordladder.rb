require_relative 'wl'
require 'pry'

def are_neighbors?(word1,word2)
  index = 0
  count = 0
  while index < 4
    count += 1 if word1[index] == word2[index]
    index += 1
  end
  return count == 3
end

def all_neighbors(base_word)
  return FOUR_LETTER_WORDS.select do |case_word|
    are_neighbors?(base_word, case_word)
  end
end

all_neighbors("aloe").each { |word| puts word }
