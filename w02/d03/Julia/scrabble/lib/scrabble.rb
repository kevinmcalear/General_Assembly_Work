#* Define a class named ScrabbleWord with an `initialize` method 
#that takes one argument, `word`, and stores it in an instance 
#variable `@word

class ScrabbleWord
  def initialize(word)
    @word = word
    @points = {
      :a => 1, :b => 3, :c => 3, :d => 2, :e => 1,
      :f => 4, :g => 2, :h => 4, :i => 1, :j => 8,
      :k => 5, :l => 1, :m => 3, :n => 1, :o => 1,
      :p => 3, :q => 10, :r => 1, :s => 1, :t => 1,
      :u => 1, :v => 4, :w => 4, :x => 8, :y => 4,
      :z => 10
    }
  end

#* Write a "getter" for this instance variable `@word` that returns 
#the word as a lowercase string.
  def word
    return @word.downcase
  end
#1. Define a method `.score` that returns the scrabble score of the word.
#If we're saying define self. (if it's in the method definition name, we'd be creating
#a class method). When you're within the instance method you don't have to call self.
#here, you're referring to the method word
  def score
    letters = self.word.split(//)
    symbols = letters.map {|letter| letter.to_sym}
    word_score = symbols.reduce(0) do |sum, symbol|
      sum + @points[symbol]
    end 
    return word_score
  end

#2. Define a method `.multiplier_score` that takes a multiplier 
#as an argument and returns a multiplied value of the score. (Think double 
#or triple word score.)
  def multiplier_score(multiplier)
      return score * multiplier
  end
end

dog = ScrabbleWord.new("dog")
puts dog.score
puts dog.multiplier_score(3)
