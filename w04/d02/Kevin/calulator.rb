require 'sinatra'
require 'sinatra/reloader'

past_calculations = { 1 => "one", 2 => "two", 3 => "three"}

get '/'  do
  '<body style ="background: pink; text-align: center;">
  <div style="margin-top: 50px;">
  <a style="background: purple; color: white; padding: 10px; border-radius: 9px; margin: 25px;"  href="http://localhost:4567/banana"> Sup</a>
  <a style="background: purple; color: white; padding: 10px; border-radius: 9px; margin: 25px;" href="http://localhost:4567/banana"> Sup</a>
  <a style="background: purple; color: white; padding: 10px; border-radius: 9px; margin: 25px;" href="http://localhost:4567/banana"> Sup</a></div>
  <h1 style="font-style: italic; margin-top: 55px; margin-bottom: 25px;">Welcome To The Calculator My Friend.</h1>
  <p style="color: gray; margin-bottom: 25px;">A calculator for real mean.</p>
  <img src="http://upload.wikimedia.org/wikipedia/en/0/0a/NERD.GIF">
  
  </body>'
end

get "/calculator" do
  past_calculations.values.join(", ")

end

get "/calculator/:id" do
 if past_calculations[params[:id].to_i]  
    past_calculations[params[:id].to_i] 
  else
    "Doesn't exist man. Sorry!"
  end
end