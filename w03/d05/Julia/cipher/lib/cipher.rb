class Cipher

def initialize(word)
  @word = word
  @alphabet = {
      :a => "n", 
      :b => "o", 
      :c => "p", 
      :d => "q", 
      :e => "r", 
      :f => "s", 
      :g => "t", 
      :h => "u", 
      :i => "v", 
      :j => "w", 
      :k => "x",
      :l => "y",
      :m => "z",
      :n => "a",
      :o => "b",
      :p => "c",
      :q => "d",
      :r => "e",
      :s => "f",
      :t => "g",
      :u => "h",
      :v => "i",
      :w => "j",
      :x => "k",
      :y => "l",
      :z => "m" }
end

def decrypt
  new_word = @word.split("")

  decrypted_word = new_word.map do |letter| 
    @alphabet[letter.to_sym]
  end
  decrypted_word.join
end

end






