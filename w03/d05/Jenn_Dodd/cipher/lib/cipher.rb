class Cipher

  def self.encode(word)

    alphabet = {:a => "n", :b => "o", :c => "p", :d => "q", :e => "r", :f => "s", :g => "t", :h => "u", :i => "v", :j => "w", :k => "x", :l => "y", :m => "z", :n => "a", :o => "b", :p => "c", :q => "d", :r => "e", :s => "f", :t => "g", :u => "h", :v => "i", :w => "j", :x => "k", :y => "l", :z => "m"}

    array_word = word.split(//)

    syms = array_word.map {|letter| letter.to_sym}

    encoded_word = syms.map {|letter| alphabet[letter]}

    return encoded_word.join

  end

end

#-------- vvvv A cooler way! vvvv

# class Cipher

#   def self.encode(word)
#     array_word = word.split("")

#     array_word.each do |char|
#       13.times do
#         if char == "z"
#           char.gsub!(/[z]/, "a")
#         else
#           char.next!
#         end
#       end
#     end
#     return array_word.join
#   end
# end