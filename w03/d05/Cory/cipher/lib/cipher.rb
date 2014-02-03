class Cipher

  
  def self.encode(word)
    array = word.split("")

    array.each do |char|
      13.times do
        char.next!
      end
    end
    return array.join
  end

end
