class ScrabbleWord
  def initialize(word)
    @word = word
  end
  def word
    return @word.downcase
  end
  def score
    values = {
      a: 1, b: 3, c: 3, d: 2, e: 1,
      f: 4, g: 2, h: 4, i: 1, j: 8,
      k: 5, l: 1, m: 3, n: 1, o: 1,
      p: 3, q: 10, r: 1, s: 1, t: 1,
      u: 1, v: 4, w: 4, x: 8, y: 4,
      z: 10
    }
    score = 0
    @word.split("").each do |letter|
      score += values[letter.to_sym]
    end
    #symbols = @word.split("").map{|letter|letter.to_sym}
    #word_score = symbols.reduce(0) do |sum,sym|
      #sym + @points[sym]
    # end
    # return word_score
    return score
  end
  def multiplier_score(multiplier)
    return self.score * multiplier #self is optional
  end
end