q1 = "How do you feel?"
q2 = "How is your day?"
q3 = "How is your relationship with your mother?"
q4 = "What are you thinking about?"
q5 = "What do you want to talk about?"
q6 = "What's up?"
q7 = "Why is the sky blue?"
question_list = [ q1, q2, q3, q4, q5, q6, q7]
#give greeting
puts "Hello!"
i = 0
text_file = Array.new
while i <= 5
  #ask a question
  chosen_q = question_list.sample
  puts chosen_q
  text_file << chosen_q
  # => *Never same twice
  question_list.delete(chosen_q)
  #get user response
  answer = gets.chomp
  text_file << answer
  #bot counters
  if answer.include?("?")
    puts "I ask the questions here."
    text_file << "I ask the questions here."
  elsif chosen_q.downcase.include?("how")
    if answer.include? ("bad" || "terrible"|| "horrible"|| "sucks"|| "worst")
      puts "I'm sorry.  We'll move on."
      text_file << "I'm sorry.  We'll move on."
    else 
      puts "Hmmm... That's nice."
      text_file << "Hmmm... That's nice."
    end
  elsif chosen_q.downcase.include?("what")
    puts "That's so interesting!"
    text_file << "That's so interesting!"
    puts "Continue... please!"
    text_file << "Continue... please!"
    answer2 = gets.chomp
    text_file << answer2
    puts "Fantastic!  Moving on..."
    text_file << "Fantastic!  Moving on..."
  else
    puts "Just kidding!  You fell for it!"
    text_file << "Just kidding!  You fell for it!"
  end
  i += 1
end
#say goodbye
puts "Goodbye"
text_file << "Goodbye"

#write convo to file

f = File.new("her.txt", "w")
  f.write (text_file.join("\n"))
f.close