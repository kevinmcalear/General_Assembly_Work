class Cipher
  @@alphabet = ("a".."z").to_a

  def self.encode(text)  
    return text.split(" ").map { |word| self.encode_word(word) }.join(" ")
  end

  def self.encode_word(word)
    return word.split("").map do |letter|
      @@alphabet[@@alphabet.index(letter)-13]
    end.join("")
  end
end




puts Cipher.encode("hello")
# => "uryyb"

puts Cipher.encode("peter")
# => "crgre"

puts Cipher.encode("hello peter")

puts Cipher.encode("uryyb crgre")