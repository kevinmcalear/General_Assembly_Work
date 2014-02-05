class Cipher
  @@plain = "abcdefghijklmnopqrstuvwxyz".split("")
  @@cipher = "nopqrstuvwxyzabcdefghijklm".split("")
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