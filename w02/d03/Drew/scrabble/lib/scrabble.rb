
class ScrabbleWord

  def initialize(word)
    @word = word
    @points = {a: 1, b: 3, c: 3, d: 2, e: 1,
  f: 4, g: 2, h: 4, i: 1, j: 8,
  k: 5, l: 1, m: 3, n: 1, o: 1,
  p: 3, q: 10, r: 1, s: 1, t: 1,
  u: 1, v: 4, w: 4, x: 8, y: 4,
  z: 10}
  end

  def word
    return @word.downcase
  end

  def score(word)
    letters = word.split("") #referring to the method word 
    symbols = letters.map {|letter| letter.to_sym} #new array of letters 
    #to symbols. The first item is symbol C the second is A the third is T. 
    # reduce goes through and carries a value at each iteration
    word_score = symbols.reduce(0) do |sum, sym| 
    # 0 is set. we start counting at 0
      sum +@points [sym]
    end
    return word_score
  end

  # def score(letter)
  #   return @score
  # end

  def multiplier_score(multiplier)
    return score * multiplier #calls instance method score on itself(same as self.score)
  end

end
