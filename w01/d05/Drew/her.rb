# Question Asking Bot

questions = ["how do you feel?", "how is your day?", "how is your relationship with your mother", "what are you thinking about?", "what's up?", "Why is the sky blue?"]
how = "Hmm...That's nice."


puts "Welcome to the Her Bot!"

program = 0
answer_array = []

if program == 0
 5.times do
  puts questions.sample
  answer = gets.chomp
  
    if question.include?("how")
        if answer_1.include?("bad" || "terrible" || "horrible" || "sucks" || "worst")
          return "I'm sorry. We'll move on"
        end
        
        return how
    end

  end

end
