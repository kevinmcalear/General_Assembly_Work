# MY WORK

# require 'pry'

# puts "Hello, I am the H.E.r Bot."

# counter = 0

# until counter == 5


#   question = ["How do you feel?", "How is your day?", "How is your relationships with your mother?", "What are you thinking about?", "What do you want to talk about?", "What's up?", "Why is the sky blue?"]
#   specific_q = question.sample.to_s

#   q_index = question.index(specific_q)
#   question.slice!(q_index)
  
#   puts "#{specific_q}"

#   response = gets.chomp.to_s

#   bad_responses = ["bad", "terrible", "horrible", "sucks", "won't"]

#   counter += 1
    
#   case specific_q

#     when specific_q.include?("How")
    
#       if response.include?(bad_responses)
#         puts "I'm sorry. We'll move on..."

#       else 
#         puts "Hmmm... That's nice!"
#       end

#     when specific_q.include?("What")
#       puts "That's so interesting!"

#     else specific_q.include?("Why")
#       puts "Just kidding! You fell for it!"

#     end

#   end

#   puts "Goodbye!"


# PJ's WORK

question_list = ["How do you feel?", "How is your day?", "How is your relationships with your mother?", "What are you thinking about?", "What do you want to talk about?", "What's up?", "Why is the sky blue?"]

greeting = "Hello, I am the H.E.r Bot."

goodbye = "Goodbye."

conversation_log = []

#give greeting

puts greeting

i = 0

while i < 5 do  #(also written 5.times do)
  #ask question
  specific_q = question_list.sample

  puts specific_q
  question_list.delete(specific_q)

  #get response

  response = gets.chomp.to_s

  if response.include?("?")
    puts "I ask the questions here!"
  else 

  #if response.includes?()

    if specific_q.include?("How")
      if response.include? ("bad"||"terrible"||"horrible"||"sucks"||"won't")

        puts "I'm sorry. We'll move on"

      else
        puts "Hmm.... That's nice"

      end

    elsif specific_q.include?("What")

        counter = 1

        case counter
          when 1
            puts "That's so interesting!"
            counter += 1

          when 2
            puts "Continue, please..."
            counter += 1

          when 3
            puts "Fantastic! Moving on..."
            counter += 1
        end
      
    else specific_q.include?("why")
        puts "Just kidding! You fell for it!"

    end

  end

  i += 1
end

puts goodbye

#write to file




