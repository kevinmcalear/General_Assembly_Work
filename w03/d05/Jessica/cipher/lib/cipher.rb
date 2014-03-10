class Cipher

   def self.encode(word)
    @alphabet = ("a".."z").to_a
    @cipher_alphabet = ["n","o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m"]
    i = 0
    while i < word.length
    index_word = @alphabet.index(word[i])
    value = @cipher_alphabet[index_word]
    i += 1
    end
  end
end
