require 'sinatra'
require 'sinatra/reloader'

get '/toss' do 
  ["heads", "tails"].sample
end

get '/dice_roll' do 
  ["1", "2", "3", "4", "5", "6"].sample
end

get '/magic8ball/will%20it%20snow%20tomorrow' do
  ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
     "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
     "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
     "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
     "Don't count on it", "My reply is no", "My sources say no",
     "Outlook not so good", "Very doubtful"].sample
   end

get '/rps/:input' do
  beats = {
    "scissors" => "rock",
    "paper" => "scissors",
    "rock" => "paper"
  }

  choices = ["rock", "paper", "scissors"]
  computer = choices.sample

  if beats[computer] == params[:input]
    return "Human wins!"
  else
    return "computer wins!"
  end
end