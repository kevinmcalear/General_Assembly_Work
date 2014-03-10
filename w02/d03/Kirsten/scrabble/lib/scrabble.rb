class ScrabbleWord
  def initialize(word)
    @word = word
    @points = { "a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1,
      "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" => 8,
      "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1,
      "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1,
      "u" => 1, "v" => 4, "w" => 4, "x" => 8, "y" => 4,
      "z" => 10 } 
  end
  def word
    return @word.downcase
  end
  def score
    letters = word.split("")
    word_score = letters.reduce(0) { |sum,letter| sum + @points[letter]}
    # score_letter = letters.map {|x| @points[x]}
    # return score_letter.inject(:+)
    # the method above does the same and is shorter.
    return word_score
  end
  def multiplier_score(multiplier)
    score * multiplier
  end
end