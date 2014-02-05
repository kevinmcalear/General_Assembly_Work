require 'sinatra'
require 'sinatra/reloader'

get '/toss' do
  coin_toss = ["Heads","Tails"]
  coin_toss.sample
end

get '/dice_roll' do
  dice_roll = (1..6).to_a
  dice_roll.sample.to_s
end

get '/magic8ball/:sentence' do
  magic_eightball_responces = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
     "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
     "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
     "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
     "Don't count on it", "My reply is no", "My sources say no",
     "Outlook not so good", "Very doubtful"]

  "#{params[:sentence]}? #{magic_eightball_responces.sample}"
end



get '/rps/:rps' do

rps = params[:rps]

rules = {
  rock: :scissors,
  paper: :rock,
  scissors: :paper
}

computer_play = [:rock, :paper, :scissors].sample

  if rules[rps.to_sym] == computer_play
    "You beat computer's #{computer_play} with your #{rps}!"
  elsif rps.to_sym == computer_play
    "It's a tie! You and computer both played #{rps}."
  else
    "You loose against computer's #{computer_play}"
  end

end
