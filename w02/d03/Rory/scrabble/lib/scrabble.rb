class ScrabbleWord
  def initialize(word)
    @word = word
    @points = { a: 1, b: 3, c: 3, d: 2, e: 1,
  f: 4, g: 2, h: 4, i: 1, j: 8,
  k: 5, l: 1, m: 3, n: 1, o: 1,
  p: 3, q: 10, r: 1, s: 1, t: 1,
  u: 1, v: 4, w: 4, x: 8, y: 4,
  z: 10}
  end 

  def word
    return @word.downcase
  end 

  def score
    letters = word.split("")
    symbols = letters.map {|x|x.to_sym}
    word_score = symbols.reduce(0) do |sum, sym|
      sum + @points[sym]
    end
    return word_score
  end

  def multiplier_score(multiplier)
    return self.score * multiplier
  end
end

current_word = ScrabbleWord.new("best")
current_word.score
current_word.multiplier_score(2)
