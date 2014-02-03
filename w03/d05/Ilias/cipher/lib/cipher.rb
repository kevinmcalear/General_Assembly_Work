class Cipher
  def encode(word, rot)
    alphabet = ("a".."z").to_a
    word_array = word.split("")
    start_position = word_array.map { |l| alphabet.index(l) }
    new_position = start_position.map do |n|
      i = rot % 26
      if i < (26-i)
        n + i
      else
        n - i
      end
    end
    code_array = new_position.map { |n| alphabet[n] }
    code = code_array.join
    return code
  end
end


cipher = Cipher.new

puts "Enter your word"
word = gets.chomp

puts "Enter ROT count"
rot = gets.chomp.to_i

puts "Computing your code..."

puts "Your new code is #{cipher.encode(word,rot)}."
