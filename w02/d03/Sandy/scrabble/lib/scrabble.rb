class ScrabbleWord 
  def initialize (word)
    @word = word
    @points =  {a: 1 , b: 3, c: 3, d: 2, e: 1,
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
    letters = word.split("")  #if self in method def name, we will be creating class method
    symbols = letters.map{|letter|letter.to_sym}
    word_score = symbols.reduce(0) do |sum, sym|
      sum + @points[sym]  #reduce(0) makes sum "0"
    end
    return word_score
    
    def multiplier_score(multiplier)
    return self.score * multiplier 
    end 
end


 #  def score
 #    puts "enter word"
 #    scrabble_word = gets.chomp
 #    scrabble_word_divided = scrabble_word.split(//)

 #    scrabble_word_divided.select{|x| }

 #    score.select{|x| }

 #    score = {a :1, b :3, c : 3, d : 2, e : 1, f : 4, g : 2, h : 4, i : 1, j : 8, k : 5, l : 1, m : 3, n : 1, o : 1, p : 3, q : 10, r : 1, s : 1, t : 1, u : 1, v : 4, w : 4, x : 8, y : 4, z : 10}
 #   end 
 # end
