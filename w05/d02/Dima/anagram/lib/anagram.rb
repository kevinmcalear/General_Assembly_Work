words = ["enlists", "google", "inlets", "banana"]

def anagram(array)
  array.each do |w1|
    array.each do |w2|
      w1.each_char do |i|
        anagram = w2.select {|b| b.eql? i}
      end
    end
  end
end

puts anagram(words)