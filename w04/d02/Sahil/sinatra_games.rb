require 'sinatra'
require 'sinatra/reloader'

get '/toss' do
  ["Heads","Tails"].sample
end
get '/dice_roll' do
  (1..12).to_a.sample.to_s
end
get '/magic8ball/will%20it%20snow%20tomorrow' do
  ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
   "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
   "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
   "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
   "Don't count on it", "My reply is no", "My sources say no",
   "Outlook not so good", "Very doubtful"].sample
 end
 get '/rps/:choice' do
  choice = params[:choice]
  key = {rock: "scissors", scissors: "paper", paper: "rock"}
  comp_choice = key.to_a.sample[1]
  string = "the computer chose #{comp_choice}. "
  if choice == comp_choice
    a = "It's a tie!"
  elsif choice == key[comp_choice.to_sym]
    a = "You lose!"
  else
    a = "You win!"
  end
  string += a
end