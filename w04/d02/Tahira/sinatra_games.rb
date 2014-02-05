require "sinatra"
require "sinatra/reloader"


get '/toss' do 
  ["Heads", "Tails"].sample 
end

get '/dice_roll' do
  [1, 2, 3, 4, 5, 6].sample.to_s
end

get  '/magic8ball/:question' do
  "#{params[:question]}?<br> " + ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
     "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
     "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
     "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
     "Don't count on it", "My reply is no", "My sources say no",
     "Outlook not so good", "Very doubtful"].sample
end

get '/rps/:play' do
  beats = {"rock" => "scissors", 
    "scissors" => "paper",
    "paper" => "rock"
  }

  computer_play = ["rock", "paper", "scissors"].sample

  if(beats[:play] == computer_play)
    "The computer chose #{computer_play}. You lose!"
  else
    "The computer chose #{computer_play}. You win!"
  end
end