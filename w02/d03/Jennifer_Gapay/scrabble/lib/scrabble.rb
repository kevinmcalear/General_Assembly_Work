class ScrabbleWord
  def initialize (word)
    @word
    @points = { a: 1, b: 3, c: 3, d: 2, e: 1, f: 4, g: 2, h: 4, i: 1, j: 8, k: 5, l: 1, m: 3, n: 1, o: 1, p: 3, q: 10, r: 1, s: 1, t: 1, u: 1, v: 4, w: 4, x: 8, y: 4, z: 10}
  end

  def word
    return @word.downcase
  end

  def score 
    letters = word.split("") #creates array of strings
    symbols = letters.map {|letter| letters_to_sym} #creates array of symbols
    word_score = symbols.reduce(0) do ||sum, sym, 
      sum + @points[sym] #initialize
    end

  return word_score
  end

  def multiplier_score(multiplier)
    return score * multiplier
  end

end


