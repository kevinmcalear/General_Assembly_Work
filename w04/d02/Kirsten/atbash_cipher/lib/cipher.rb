class Cipher
  def self.encode (word)
    alphabet = ("a".."z").to_a
    letters = word.split(//)
    index_new = letters.map do |a| 
      alphabet.index(a)
    end
    new_letters = index_new.map do |a|
      alphabet[-a-1]
    end
    new_letters.join
  end
end

#   def self.encode(word)
#     alphabet = ("a".."z").to_a
#     letters = Hash[alphabet.zip(alphabet.reverse)]
#     return word.gsub(/./) {|character| letters[character]}
#   end
# end