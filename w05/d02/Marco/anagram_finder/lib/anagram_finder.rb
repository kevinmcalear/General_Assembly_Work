class Anagram
  def initialize(word)
    @word = word
  end

  def analyze
    @word = @word.split(//)
  end

end

choose = Anagram.new("choose")

puts choose.analyze