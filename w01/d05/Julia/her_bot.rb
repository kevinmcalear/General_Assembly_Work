
#wrtie a simple question-asking "bot"
f = File.new("her_bot_transcript.txt", "w")
random_questions = ["How do you feel?", "How is your day?", "How is your relationship with your mother?", "What are you thinking about?", "What do you want to talk about?", "What's up?", "Why is the sky blue?"]

puts "Hi, welcome to the random question bot!"
first_question = random_questions.sample
puts first_question
random_questions.delete(first_question)
first_answer = gets.chomp

#Method to respond to questions
def responses(question, answer)
if question.include? "How"
  if answer.include? "bad" || "terrible" || "horrible" || "sucks" || "worst"
    puts "I'm sorry, we'll move on!"
  else
    puts "Hmmm...That's nice!"
  end
elsif question.include? "What"
  puts "That's so interesting!"
  puts "Continue please..."
  follow_up = gets.chomp
  puts "Fantastic! Moving on."
else 
  puts "Just kidding! You fell for it."
end
end

puts responses(first_question, first_answer)

second_question = random_questions.sample
puts second_question
random_questions.delete(second_question)
second_answer = gets.chomp

puts responses(second_question, second_answer)

third_question = random_questions.sample
puts third_question
random_questions.delete(third_question)
third_answer = gets.chomp

puts responses(third_question, third_answer)

fourth_question = random_questions.sample
puts fourth_question
random_questions.delete(fourth_question)
fourth_answer = gets.chomp

puts responses(fourth_question, fourth_answer)

fifth_question = random_questions.sample
puts fifth_question
random_questions.delete(fifth_question)
fifth_answer = gets.chomp

puts responses(fifth_question, fifth_answer)

puts "Alrighty! Goodbye."

f.close