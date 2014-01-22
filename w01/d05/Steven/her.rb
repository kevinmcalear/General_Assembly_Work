f = File.open("her.txt", "w")

questions = ["How do you feel today?", "How is your day?", 
  "How is your relationshio with your mother?", "What are you thinking about?",
    "What do you want to talk about?", "Whats up?", "Why is the sky blue?"]
greeting = "Hello"

how_counter_1 = "I'm sorry, we'll move on"
how_counter_2 = "hmmm...That's nice"

what_counter_1 = "That's so interesting!"
what_counter_2 = "continue please"

i = 0
while i < 6
  puts greeting
  question = questions.sample
  puts question
  
  questions.delete(question.to_s)

  answer_1 = gets.chomp
  f.puts answer_1

  if question.include?("How")
    if answer_1.include? ("bad" || "terrible" || "horrible" || "sucks" || "won't")  
      puts how_counter_1
    else
      puts how_counter_2
    end

  elsif question.include?("What")
    puts what_counter_1
    puts what_counter_2


  else
    puts "Just Kidding! You fell for it!"
  end


  puts "Fantastic! Moving on."
  i += 1
end

puts "Goodbye!"

f.close















  


    
  