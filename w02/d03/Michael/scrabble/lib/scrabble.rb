require 'pry'

class ScrabbleWord
  def initialize(word)
    @word = word
    @values = {
  :a => 1, 
  :b => 3, 
  :c => 3, 
  :d => 2, 
  :e => 1,
  :f => 4, 
  :g => 2, 
  :h => 4, 
  :i => 1, 
  :j => 8,
  :k => 5, 
  :l => 1, 
  :m => 3, 
  :n => 1, 
  :o => 1,
  :p => 3, 
  :q => 10, 
  :r => 1, 
  :s => 1, 
  :t => 1,
  :u => 1, 
  :v => 4, 
  :w => 4, 
  :x => 8, 
  :y => 4,
  :z => 10
}
  end
  def word
    return @word.downcase
  end
  def score
    letters = word.split("")
    letters_to_sym =letters.map{|letter| letter.to_sym}
    word_score = symboles.reduce(0) do |sum,sym|
      sum + @points[sym]
      end 
    return word_score
  end    
  def multiplier_score(multiplier)
    return score * multiplier
  end 

##Self in the method definition-- creates a class method. 
##Self in the 

    # score_total = 0
    # i = 0
    #   while i<@word.length
    #     hash = @word[i].to_sym
    #     score_total += @values[hash]
    #   end  
      # @word[] do |letter| 
      # score_total += values[letter.downcase.to_sym]
      # end
    return score_total
  end
  def multiplier_score(score,multiplier)
    return score * multiplier
  end
end  
  


#TEST#
babblefish = ScrabbleWord.new('Babblefish') 
babblefish.word

binding.pry



