require 'sinatra'
require 'sinatra/reloader'

get '/toss' do
  ["heads","Tails"].sample
end

get '/dice_roll' do
  dice = (1...6).to_a 
  dice.sample.to_s
end 

get '/magic8ball/:question' do
  eight_ball = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely","You may rely on it","As I see it, yes","Most likely","Outlook good","Yes","Signs point to yes","Reply hazy try again","Ask again later","Better not tell you now", "Cannot predict now","Concentrate and ask again","Don't count on it","My reply is no","My sources say no","Outlook not so good","Very doubtful"]
  "#{params[:question]}? {eight_ball.sample}"    
end 


get'/rps/:play' do
  beats = {
    "scissors" => "rock",
    "paper" => "scisosrs",
    "rock" => "paper"
  }
  computer_play = ["scissors","rock","paper"].sample

  if beats[params[:play]] == computer_play
    return "Computer Wins!"
  elsif [params[:play]] == computer_play
    "No One Wins!"
  else "You win!"
  end

end 

