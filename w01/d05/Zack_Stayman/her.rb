# 1. write a simple questions answering bot
# 2. there is a list of seven questions asked randomly

# how do you feel?
#   how is your day?
#   how is your relationship with your mother?
#   what are you thinking about?
#   what do you want to talk about?
# What's up?
# Why is the sky blue


# 3. each "session" begins with a greeting followed by a question
# 4. after 5 question-response the "bot" says goodbye and ends
require 'pry'
def poor_response
  return "I'm sorry, We'll move on."
end

f = File.open("her.txt","w")

puts "Hello there"
f.puts "Hello there"

questions = ["How do you feel?", "How is your day?", "How is your relationship with your mother?",
  "What are you thinking about?", "What do you want to talk about?", "What's up?", "Why is the sky blue?"]


  5.times do
    # binding.pry
    inquiry = questions.sample
    puts inquiry
    f.puts inquiry
    questions.delete(inquiry.to_s)
    if inquiry.include? "How"
      input = gets.chomp
      f.puts input
      if input.include? "bad"
        puts f.puts.chomp poor_response
        
      elsif input.include? "terrible"
        puts poor_response
        f.puts poor_response
      elsif input.include? "horrible"
        puts poor_response
        f.puts poor_response
      elsif input.include? "sucks"
        puts poor_response
        f.puts poor_response
      elsif input.include? "worst"
        puts poor_response
        f.puts poor_response
      else
        puts f.puts "Hmm... That's nice."
        # f.puts"Hmm... That's nice."
      end
    elsif inquiry.include? "What"
      input = gets.chomp
      f.puts input
      puts "That's so interesting! Continue, please!"
      f.puts.chomp"That's so interesting! Continue, please!"
      input = gets.chomp
      f.puts input
      puts "Fantastic! Moving on..."
    elsif inquiry.include? "Why"
      input = gets.chomp
      f.puts input
      puts "Just kidding! You fell for it!"
      f.puts"Just kidding! You fell for it!"
    end
  end

  puts "Goodbye"
  f.puts "Goodbye"
  f.close