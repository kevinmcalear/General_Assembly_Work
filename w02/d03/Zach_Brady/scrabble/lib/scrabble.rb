class ScrabbleWord
  def initialize(word)
    @word = word
    @score = {"a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1, "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" => 8, "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1, "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1, "u" => 1, "v" => 4, "w" => 4, "x" => 8, "y" => 4, "z" => 10 }

  end

  def get_word
    return @word.to_s.downcase
  end

  def score 
    # iterate through letters of word
    the_score = 0
    self.get_word.each_char do |letter|
      the_score += @score[letter]
    end
    return the_score
  end

  def multiplier_score(multiplier)
    return self.score * multiplier
  end

end

word1 = ScrabbleWord.new("Hegemony")
puts word1.score
puts word1.multiplier_score(2)


