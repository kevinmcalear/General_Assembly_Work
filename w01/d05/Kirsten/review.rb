# Write a simple question asking bot.
# There is a list of 7 questions asked randomly. 

# 1. How do you feel?
# 2. How is your day?
# 3. How is your relationship with your mother?

# 4. What are you thinking about?
# 5. What do you want to talk about?
# 6. What's up?

# 7. Why is the sky blue?

# Each sesison begins with a greeting followed by a question.

# After 5 questions the bot says goodbye and ends.

# If the response is a question, have the bot respond "I ask the questions here." 

# All interactions - bot asks, person responds, bot replies. 
# 1-3 - response - "Hmm, that's nice." unless response includes bad, terrible, horrible, sucks, worst. then "I'm sorry, we'll move on."
# 4-6 - response - "That's so interesting!" and the next question should be "Continue, please."
# 7 - response - "Just kidding, you fell for it!" 
# and all responses are countered "Fantastic! moving on..."
# Write the entire conversation in a new file called her.txt

# Currently set up as arrays. Can also try doing this in hashes.
# [{:question => "How do you feel?", :default_counter => "Hmm... Interesting"}
    # {:question => "etc"}]


# require 'pry'
# on top of the line that is giving you a problem "binding.pry"

questions = ["How do you feel?", "How is your day?", "How is your relationship with your mother?", "What are you thinking about?", "What do you want to talk about?", "What's up?", "Why is the sky blue?"]
how_response = ["Hmm, that's nice.", "I'm sorry, we'll move on."]
what_response = ["That's so interesting!", "Continue, please."]
sky_response = "Just kidding, you fell for it!"
all_response = "Fantastic! Moving on..."
bad_response = ["bad","terrible","sucks","worst"]
print_array = []

def q(response,print_array)
  if response.include?("?")
    puts "I ask the questions around here."
    print_array.push("I ask the questions around here.")
  end
end

f = File.new("her.txt", "w")
puts "Hello"
print_array.push("Hello.")
counter = 1
while counter < 6
  question = questions.sample
  questions.delete(question.to_s)

  puts question
  print_array.push(question)
  response = gets.chomp
  print_array.push(response)
  q(response,print_array)
  
  counter += 1
  if question.include?("How")
    if response.include?(bad_response[0])
      puts how_response[1]
      print_array.push(how_response[1])
    elsif response.include?(bad_response[1])
      puts how_response[1]
      print_array.push(how_response[1])
    elsif response.include?(bad_response[2])
      puts how_response[1]
      print_array.push(how_response[1])
    elsif response.include?(bad_response[3])
      puts how_response[1]
      print_array.push(how_response[1])
    else 
      puts how_response[0]
      print_array.push(how_response[0])
    end
  elsif question.include?("What")
    puts what_response[0]
    print_array.push(what_response[0])
    puts "Continue, please."
    counter += 1
    print_array.push("Continue, please.")
    response = gets.chomp
    print_array.push(response)
    puts all_response
    print_array.push(all_response)
  else
    puts sky_response
    print_array.push(sky_response)
  end

end
  puts "This conversation is boring, I'm out."
  print_array.push("This conversation is boring, I'm out.")

f.puts print_array.join("\n")
f.close

`subl her.txt`


