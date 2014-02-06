class Cipher



  def self.encode(word)
    alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    final_word = ""
    split_word = word.split("")
    word_indexes = split_word.map { |letter| alphabet.index(letter) + 11}

    word_indexes.each {|position| final_word << alphabet[position]}

    return final_word
  end
end
