require 'sinatra'
require 'sinatra/reloader'

get '/toss' do
coins = ["Heads", "Tails"]
coins.sample
end

get '/dice_roll' do

  dice_numbers = (1..6).to_a
  roll = dice_numbers.sample
  "You rolled #{roll}!</span>"

end

get '/magic8ball' do
  "Will it snow tomorrow?"
  chance_of_snow = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
     "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
     "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
     "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
     "Don't count on it", "My reply is no", "My sources say no",
     "Outlook not so good", "Very doubtful"]
  chance_of_snow = chance_of_snow.sample
  "#{chance_of_snow}"
end

get '/rps/:computer_play/:your_play' do
  beats = {
    "scissors" => "rock", 
    "paper" => "scissors",
    "rock" => "paper"
  }

  if beats[params[:computer_play]] == params[:your_play]
    "#{params[:your_play]} beats #{params[:computer_play]}"
  else
    "#{params[:computer_play]} beats #{params[:your_play]}"
  end
end

