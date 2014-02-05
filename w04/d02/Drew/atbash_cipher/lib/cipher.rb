class Cipher

  def self.encode(word)
    plain_alphabet = ('a'..'z').to_a
    cipher_alphabet = plain_alphabet.reverse

    word_array = word.split("")

    cipher_array = word_array.map do |letter|
      index = plain_alphabet.index(letter)
      cipher_alphabet[index]
    end

    cipher_array.join("")

  end

end