require 'pry'
class Anagram


  def self.is_anagram(word1,word2)
    word1_array = word1.split("").sort
    word2_array = word2.split("").sort
    word1_array == word2_array
  end 

  def self.select_anagram(word1, word_list)
    @word1_array = word1.split("").sort
    @matches = []
    @matches = word_list.select do |word| 
        Anagram.is_anagram(word1,word)
      end
    return @matches.each{|match| puts match}
  end 
end 

Anagram.select_anagram("listen", ["enlists", "google", "inlets", "banana"])
