require "pry"


def anagram(word)
  letters = word.split(//)
end



def anagram_bank(word_bank)
  new_bank = word_bank.map do |word|
    anagram(word)
  end
end





word_bank = ["enlists", "google", "inlets", "banana"]