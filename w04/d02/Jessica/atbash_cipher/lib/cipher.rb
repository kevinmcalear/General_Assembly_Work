class Cipher

  def self.encode(word)
    plain_alphabet = ('a'..'z').to_a
    cipher_alphabet = plain_alphabet.reverse

    plaintext_array = word.split('')

    ciphertext_array = plaintext_array.map do |char|
      index = plain_alphabet.index(char)
      cipher_alphabet[index]
    end

    return ciphertext_array.join("")
  end


  def self.encode2(word)
    alphabet = ("a".."z").to_a
    letters = Hash[alphabet.zip(alphabet.reverse)]
    encoded_word = word.split("").map do |letter|
      letters[letter]
    end

    return encoded_word.join("")



    # return word.gsub(/./) {|character| letters[character]}
  end

end