# * Define a class named ScrabbleWord with an `initialize` method that takes one argument, `word`, and stores it in an instance variable `@word`.
class ScrabbleWord
  def initialize(word)
    @word = word
    @letter_scores = { a: 1, b: 3, c: 3, d: 2, e: 1,
    f: 4, g: 2, h: 4, i: 1, j: 8,
    k: 5, l: 1, m: 3, n: 1, o: 1,
    p: 3, q: 10, r: 1, s: 1, t: 1,
    u: 1, v: 4, w: 4, x: 8, y: 4,
    z: 10 }
  end
  # * Write a "getter" for this instance variable `@word` that returns the word as a lowercase string.
  def word
    return @word.downcase
  end
  # 1. Define a method `.score` that returns the scrabble score of the word.
  def score
    word_score = 0
    self.word.each_char do |letter|
     word_score += @letter_scores[letter.to_sym]
   end
   return word_score
 end
 # 2. Define a method `.multiplier_score` that takes a multiplier as an argument and returns a multiplied value of the score. (Think double or triple word score.)
  def multiplier_score(multiplier)
    return self.score * multiplier.to_i
  end
end

moo = ScrabbleWord.new("moo")
puts moo.score
puts moo.multiplier_score(3)

















