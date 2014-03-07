require_relative "wl"

def word_ladder (word)
  alpha = (a..z).to_a
  ladder = []

  word.each_char do |char|
    index = word.index(char)
    alpha.each do |letter|
      if char != letter
        new_word = word
        new_word[index] = letter
        if FOUR_LETTER_WORDS.include(new_word)
          ladder << new_word
        end
      end
    end
  end

  return ladder
end