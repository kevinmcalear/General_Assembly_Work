require 'pry'

class Cipher
  @@alphabet = ("a".."z").to_a
  
  def self.encode(word)
    encoded = word.split("").map do |letter|
      @@alphabet[25 - @@alphabet.index(letter)]
    end
    return encoded.join("")
  end

  def self.encode2(word)
    cipher = Hash[@@alphabet.zip(@@alphabet.reverse)]
    # word.split("").map { |letter| cipher[letter]}.join
    return word.gsub(/./) { |letter| cipher[letter]}
  end

end
