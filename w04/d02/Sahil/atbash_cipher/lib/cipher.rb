def self.encode2(word)
    alphabet = ("a".."z").to_a
    letters = Hash[alphabet.zip(alphabet.reverse)]
    encoded_word = word.split("").map do |letter|
      letters[letter]
    end

    return encoded_word.join("")



    # return word.gsub(/./) {|character| letters[character]}
  end


# class Cipher
#   def self.encode(word)
#     plain = "abcdefghijklmnopqrstuvwxyz"
#     word.each_char do |char|
#       count = 26 - plain.index(char)

#       count.times do
#         # if char == "z"
#         #   char = "a"
#         # else
#           char.succ!
#         # end
#       end

#     end

#   end
# end

#I hope you're doing well. I wanted to follow up and say great to meet you last friday during the WDI lunch.
#PSO, sectors