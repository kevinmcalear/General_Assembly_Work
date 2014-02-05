require 'sinatra'
require 'sinatra/reloader'

get '/toss' do
 ["Heads","Tails"].sample
end

get '/dice_roll' do
  "#{(1..6).to_a.sample}"
end

get '/magic8ball/:question' do
  responses = 
["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
     "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
     "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
     "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
     "Don't count on it", "My reply is no", "My sources say no",
     "Outlook not so good", "Very doubtful"]
     "#{params[:question]}? #{responses.sample}"
end

get '/rps/rock' do
  rps = ["rock", "scissors", "paper"].sample
  if rps == rps[0]
    "Draw"
  elsif rps == rps[1]
    "The computer chose scissors. You lose!"
  else
    "The computer chose paper. You lose!"
  end
end

get '/rps/scissors' do
  rps = ["rock", "scissors", "paper"].sample
  if rps == rps[0]
    "The computer chose rock. You win"
  elsif rps == rps[1]
    "Draw"
  else
    "The computer chose paper. You win"
  end
end

get '/rps/:play' do # :play gives a string inside params hash
  winner = {"rock" => "scissors","scissors" => "paper", "paper" => "rock"}
  computer = ["scissors", "paper", "rock"].sample
  if winner[params[:play]] == computer
    "The computer played #{computer}.you win"
  else
    "you loose"
  end
end