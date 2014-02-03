require 'pry'

class Cipher

  def self.encode(word)
    alphabet = ('a'..'z').to_a

    split_word = word.split(//)

    word_index = split_word.map {|letter| 
      alphabet.index(letter) - 13
    }

    new_word = word_index.map {|index| alphabet[index]}

    new_word.join
  end

end


# puts test.encode("Marco")
