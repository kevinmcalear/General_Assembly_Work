
require 'pry'

class Cipher

  def self.encode(word)
    array = word.split("")
    
  array.each do |char|
      13.times do 
        if char == "z"
          char.gsub!(/[z]/,"a")
        else
          char.next!
        end
      end
    
    end

    return array.join
  
  end

end

