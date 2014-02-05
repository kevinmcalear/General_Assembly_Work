require'pry'
class Cipher
  @plain = ("a".."z").to_a
  @encode = ("a".."z").to_a.reverse
  def self.encode(word)
    array = word.split("")
    array = array.map do |letter|
      index = @plain.find_index(letter)
      @encode[index]
    end
    return array.join
  end
end
  
    
# def self.encode@(word)
# alphabet = ("a".."z").to_a
# letters = Hash[alphabet.zip(alphabet.reverse)]
# encoded_word = word.split("").map do |letter|
#   letters[letter]
# end
# return encoded_word.join(" ")
# end