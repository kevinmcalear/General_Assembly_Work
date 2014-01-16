firstnamelist = ["Shmee", "Muffins"]
lastnamelist = ["Coddleswort", "Curdlesnoot"]

puts firstnamelist[0]

firstnamelist.push("Jeff")

firstnamelist.delete("Muffintop")

def generate_name(firsts, lasts)
  return "#{firsts.sample} #{lasts.sample}"
end

def get_answer
  puts "Would you like to generate a name?"
  return gets.chomp.downcase
end

puts generate_name(firstnamelist, lastnamelist)

while ( get_answer() == "y" )
  puts generate_name(firstnamelist, lastnamelist)
end