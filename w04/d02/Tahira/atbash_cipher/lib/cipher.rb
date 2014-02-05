class Cipher

  def self.encode(word)
    plain = ("a".."z").to_a
    cipher = plain.reverse
    encoded = ""
    word.each_char do |letter|
      index = plain.index(letter)
      encoded = encoded + cipher[index].to_s
    end
    return encoded
  end
end