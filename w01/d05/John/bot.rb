# def ask_question(questions)

# end

questions = [
  "How do you feel?",
  "How is your day?",
  "How is your relationship with your mother?",
  "What are you thinking about?",
  "What do you want to talk about?",
  "What's up?",
  "Why is the sky blue?"
]

convo_log = []

# intro the program
intro = "Hey! I've got something to ask you..."
puts intro
convo_log << intro

last_question_was_a_what = false

# ask 5 questions! (broken into question/counter/response)

5.times do
  if last_question_was_a_what
    question = "Continue... please!"
    last_question_was_a_what = false
  else
    # choose a question at random and remove from list
    question = questions.sample
    questions.delete question
  end

  # ask the question
  puts question
  convo_log << question

  # get the response
  response = gets.chomp
  convo_log << response
  

  # check the response, based on the question type...
  if question.include? "How"
    tags = ["bad", "terrible", "horrible", "sucks", "worst"]
    
    if tags.select {|word| response.downcase.include? word}.any?
      counter = "I'm sorry. We'll move on."      
    else
      counter = "Hmmm...That's nice."
    end
  elsif question.include? "What"
    counter = "That's so interesting!"
    last_question_was_a_what = true
  elsif question.include? "Why"
    counter = "Just kidding! You fell for it!"
  end

  # add counter to log
  puts counter
  convo_log << counter

  # space out the question-response-counter...
  convo_log << "\n"
  puts

end

# say goodbye
sign_off = "Well, that was informative! Thanks!"
puts sign_off
convo_log << sign_off

# write conversation log to file
f = File.open("her.txt", "w")
f.puts convo_log.each {|line| puts line}
f.close
# puts convo_log.flatten.join("\n")
