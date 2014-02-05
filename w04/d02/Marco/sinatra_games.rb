require 'sinatra'
require 'sinatra/reloader'

get '/toss' do 
  ["Heads", "Tails"].sample
end

get '/dice_roll' do

  die = (1..6).to_a
  strings = die.map {|num| num.to_s}

  strings.sample
end

get '/magic8ball/will%20it%20snow%20tomorrow' do
  ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
     "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
     "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
     "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
     "Don't count on it", "My reply is no", "My sources say no",
     "Outlook not so good", "Very doubtful"].sample
  
end

get '/rps/:throw' do
  beats = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}

  computer_throw = ["rock", "paper", "scissors"].sample

  if beats[params[:throw]] == computer_throw
    "The computer chose #{computer_throw}. You win!"
  elsif beats[computer_throw] == params[:throw]
    "The computer chose #{computer_throw}. You lose."
  else params[:throw] == computer_throw
    "The computer chose #{computer_throw}. It's a draw."
  end

end

