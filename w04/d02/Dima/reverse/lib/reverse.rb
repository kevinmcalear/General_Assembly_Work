require'pry'
def reverse_words(text)
  newtxt = text.split(" ").reverse
  reverse_txt = newtxt.join(" ")
end

def reverse_each_word(text)
  newtxt = text.split(" ")
  newarr = newtxt.each {|w| w.reverse!}
  reverse_txt = newarr.join(" ")
end