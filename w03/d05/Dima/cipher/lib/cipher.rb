require'pry'
class Cipher
  def initialize
  @@regular = [
      "a", "b", "c",
      "d", "e", "f",
      "g", "h", "i",
      "j", "k", "l",
      "m", "n", "o",
      "p", "q", "r",
      "s", "t", "u",
      "v", "w", "x",
      "y", "z" ]

  @@rot13 = ["n", "o", "p", "q", "r",
            "s", "s", "t", "u", "v", "w",
          "x", "y", "z", "a", "b", "c", "d",
          "e", "f", "g", "h", "i", "j", "k",
          "l", "m"]
  end

  def regular
    @regular
  end

  def rot13
    @rot13
  end

  def self.encode(word)
    word.each_char do |i|
      @@regular.each binding.pry do |j|
        @@rot13.each do |k|
          if i == j
            i = k
            puts i
          end
        end
      end
    end
  end
end
