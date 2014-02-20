class Anagram

 def initialize(word)
   @word = word.split("")
 end

 def word
  return @word
 end

 def alpha
   return @word.sort
 end

end