class Cipher
  def self.encode1(word)
    alphabet = ("a" .. "z").to_a
    letter_array = word.split('')
    folded = letter_array.map do |letter|
      alphabet_index = alphabet.find_index(letter)
      alphabet[-alphabet_index -1]
    end
    folded.join
  end

  def self.encode(word)
    alphabet = ("a" .. "z").to_a
    letters = Hash[alphabet.zip(alphabet.reverse)]
    encoded_letters = word.split("").map do |letter|
      letters[letter]
    end
    return encoded_letters.join
  end
end