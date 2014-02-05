class Cipher
  @@plain = "abcdefghijklmnopqrstuvwxyz".split("")
  @@cipher = "zyxwvutsrqponmlkjihgfedcba".split("")
  def initialize()
  end
  def self.encode(word)
    word_array = word.split("")
    result = word_array.map do |letter|
      idx = @@plain.find_index(letter)
      letter = @@cipher[idx]
    end
    return result.join("")
  end
end




# def self.encode2(word)
#     alphabet = ("a".."z").to_a
#     letters = Hash[alphabet.zip(alphabet.reverse)]
#     encoded_word = word.split("").map do |letter|
#       letters[letter]
#     end

#     return encoded_word.join("")



#     # return word.gsub(/./) {|character| letters[character]}
#   end