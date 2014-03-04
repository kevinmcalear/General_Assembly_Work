require 'sinatra'
require 'sinatra/reloader'

get '/title' do
"<html>
<head>
<title>Sinatra Games</title>
</head>
<body>
<h1>
Yo
</h1>
<p>
How's it going, internet?
</p>
</body>
</html>"
end

get '/toss' do
  ["Heads", "Tails"].sample
end

get '/dice_roll' do
  [1,2,3,4,5,6].sample.to_s
end

get '/magic8ball/will%20it%20snow%20tomorrow' do
  "Will it snow tomorrow? #{["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
       "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
       "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
       "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
       "Don't count on it", "My reply is no", "My sources say no",
       "Outlook not so good", "Very doubtful"].sample}"
end

get '/rps/:pick' do
  computer_choice = [:rock, :paper, :scissors].sample
  beats = {"rock" => "scissors", "paper" => "rock", "scissors" => "paper"}
  if beats[params[:pick].to_s] == computer_choice.to_s
    "The Computer chose #{computer_choice}. You win!"
  elsif beats[computer_choice.to_s] == params[:pick].to_s
    "The Computer chose #{computer_choice}. You lose!"
  else
    "The Computer chose #{computer_choice}. Draw!"
  end

end