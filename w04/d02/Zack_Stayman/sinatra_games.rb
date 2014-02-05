require 'sinatra'
require 'sinatra/reloader'

get '/toss' do
  ["Heads", "Tails"].sample

end

get '/dice_roll' do

  (1..6).to_a.sample.to_s

end

get '/magic8ball/:question' do
  answer = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
   "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
   "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
   "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
   "Don't count on it", "My reply is no", "My sources say no",
   "Outlook not so good", "Very doubtful"]
   params[:question] + "? " + answer.sample

 end

 get '/rps/:choice' do

  beats = {
    "scissors" => "rock",
    "paper" => "scissors",
    "rock" => "paper"
  }
computer_choice = beats.flatten.uniq.sample
  if beats[params[:choice]] == computer_choice
    "the computer chose #{computer_choice}, you lose"
  elsif computer_choice == params[:choice]
    "tie"
  else
    "the computer chose #{computer_choice} you win"
  end
end



  # if player_two[:play] == beats[player_one[:play]]
  #     return "#{player_two[:name]} wins!"
  #   elsif beats[player_two[:play]] == player_one[:play]
  #     return "#{player_one[:name]} wins!"
  #   end
