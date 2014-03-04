class ScrabbleWord

  SCRABBLE_VALUES = { 
    a: 1, b: 3, c: 3, d: 2, e: 1, f: 4, g: 2, h: 4, i: 1, j: 8, k: 5, l: 1, m: 3, n: 1, o: 1, p: 3, q: 10, r: 1, s: 1, t: 1, u: 1, v: 4, w: 4, x: 8, y: 4, z: 10
  }

  def initialize(word)
    @word = word
  end

  def word
    @word.downcase
  end

  def score
    char_arr = word.chars

    points = char_arr.reduce(0) do |sum, char|
      sum + SCRABBLE_VALUES[char.to_sym]
    end

    points
  end

  def multiplier_score(multiplier)
    score * multiplier
  end

  def score_values
    SCRABBLE_VALUES
  end

end
