class Cipher
  def self.encode(string)
    ##Step 1:  Create an Alpha Array
    alpha = ("a".."z").to_a
    ##Step 2:  Create an of values from the String
    array = string.downcase.split("")
    ##Step 3:  Create an Array of Fold Indexes
    fold_index = array.map {|letter| (alpha.index(letter)+1) * -1}
    ##Step 4:  Create an Array of Fold Letter Values
    new_string = fold_index.map {|index| alpha[index.to_i]}
    return new_string.join
  end
end