require 'sinatra'
require "sinatra/reloader"

get '/toss' do
  ["Heads", "Tails"].sample
end

get '/dice_roll' do
  ["2", "3","4","5","6","7","8","9","10","11","12"].sample
end

get '/magic8ball/:question' do
  responses = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
     "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
     "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
     "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
     "Don't count on it", "My reply is no", "My sources say no",
     "Outlook not so good", "Very doubtful"]
     "#{params[:question]}? #{responses.sample}"
end

get '/rps/:play' do
  winner = {"scissors" => "rock",
                  "paper" => "scissors",
                   "rock" => "paper"}
    computer  = ["scissors", "paper", "rock"].sample
    if winner[params[:play]] == computer
      "The computer played #{computer} You Win"
    else
      "The computer played #{computer} You Lose"
    end
end

