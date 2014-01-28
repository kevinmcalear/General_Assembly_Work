class ScrabbleWord

  def initialize(word)
    @word = word
    @scoring = {
    :a => 1, :b => 3, :c => 3, :d => 2, :e => 1,
    :f => 4, :g => 2, :h => 4, :i => 1, :j => 8,
    :k => 5, :l => 1, :m => 3, :n => 1, :o => 1,
    :p => 3, :q => 10, :r =>1, :s => 1, :t => 1,
    :u => 1, :v => 4, :w => 4, :x => 8, :y => 4,
    :z => 10
  }
  end

  def word
   return @word
 end

 def score
  broken_word = @word.downcase.split("")
  ############################################
  # THIS WAS THE OLD WAY OF DOING IT WITHOUT REDUCE
  # total = 0
  # scores = broken_word.each { | letter | total +=  @scoring[letter.to_sym] }
  #############################################
  scores = broken_word.reduce(0) { | sum, letter | sum + @scoring[letter.to_sym] }
  return scores
  end

  def multiplier_score(multiply)
    return multiply * score
  end

end
