require 'pry'

def same_letters(word1, word2)
  word1.to_s.split(//).sort == word2.to_s.split(//).sort
end

def is_anagram(word1, *comparing_words)
  comparing_words.select {| word | same_letters(word1, word) }
end
#
#
  #words_array.map! {|word|
  #word = word.to_s.split(//).sort
  #}
  #overlap = words_array.each{|word| word & word1}
    #if overlap.empty?
      #false
    #elsif overlap.map{|word| 
      #if (word & word1) == (word1 & word1)
        #return overlap.join
      #end
    #}
