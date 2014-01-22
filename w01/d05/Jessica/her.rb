f = File.open("her.txt", "w")

# 

#class QuestionList
#   def initialize
#   end

#   def ask

#   end
# end






require 'pry'

questions_array = ["How do you feel?", "How is your day?", "How is your relationship with your mom?", "What are you thinking about?", "What do you want to talk about?", "What's up?"] 


def greeting
  puts "Hello there, I am a bot!"
end

i = 0 
while i < 6
greeting
question = questions_array.sample
puts question
questions_array.delete(question.to_s)
response = gets.chomp
if question.include?("How")

    if response.include?("bad" || "terrible" || "sucks" || "worst")
    puts "I'm sorry we will move on."
    elsif response.include?("?")
      puts "I ask the questions!"
    else
    puts "Hmmm...thats nice. "
  end

elsif question.include?("What")
  puts "That is so interesting!"
  puts "Continue please"

else 
  puts "Just kidding! You fell for it"

end

puts "Fantastic, moving on..."
i += 1
end

puts f.puts "Goodbye!"
f.close



