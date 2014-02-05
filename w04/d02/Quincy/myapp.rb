require 'sinatra'
require 'sinatra/reloader'

get '/toss' do
  ["Heads", "Tails"].sample
end

get '/dice_roll' do
  [1..10].to_a.sample.to_s
end

get '/magic8ball/will%20it%20snow%20tomorrow' do
  response = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
     "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
     "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
     "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
     "Don't count on it", "My reply is no", "My sources say no",
     "Outlook not so good", "Very doubtful"]
     "#{params[:question]}? #{responses.sample}"
end

get '/rps/:play' do
  winner = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}
  computer = ["scissors", "paper", "rock"].sample
  if winner[params[:play]] == computer
    "The computer played #{computer}. You win."
  else
    "The computer played #{computer}. You lose."
  end
end