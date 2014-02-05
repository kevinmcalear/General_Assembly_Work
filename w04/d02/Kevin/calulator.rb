require 'sinatra'
require 'sinatra/reloader'
# USE THIS TO TO THE MATH: curl -d "num1=2&num2=3" http://localhost:4567/calculator/add       Replace the values for num1 & num2 and the /add to use.
past_calculations = { 1 => "Your Calculation Was: <span style=\"color: purple;\">7 + 4 = 11</span><br><br>", 2 => "Your Calculation Was: <span style=\"color: purple;\">7 * 3 = 21</span><br><br>", 3 => "Your Calculation Was: <span style=\"color: purple;\">7 - 7 = 0</span><br><br>"}

get '/'  do
  '<body style ="background: pink; text-align: center;">
  <div style="margin-top: 50px;">
  <a style="background: purple; color: white; padding: 10px; border-radius: 9px; margin: 25px;"  href="http://localhost:4567/calculator">   See Your Recipts   </a>
  </div>
  <h1 style="font-style: italic; margin-top: 55px; margin-bottom: 25px;">Welcome To The Calculator My Friend.</h1>
  <p style="color: gray; margin-bottom: 25px;">A calculator for real men.</p>
  <img src="http://upload.wikimedia.org/wikipedia/en/0/0a/NERD.GIF">
  
  </body>'
end

get "/calculator" do
  "<body style =\"background: pink; text-align: center;\">
  <div style=\"margin-top: 50px;\">
  <a style=\"background: purple; color: white; padding: 10px; border-radius: 9px; margin: 25px;\"  href=\"http://localhost:4567/\">   Go Back Home   </a>
  </div>
  <h1 style=\"font-style: italic; margin-top: 55px; margin-bottom: 25px;\">Your Recipts My Friend.</h1>
  #{past_calculations.values.join(" ")}

  </body>"

end

get "/calculator/:id" do
 if past_calculations[params[:id].to_i]  
    past_calculations[params[:id].to_i] 
  else
    "Doesn't exist man. Sorry!"
  end
end

post "/calculator/add" do
  result = params[:num1].to_f + params[:num2].to_f
  last_id = past_calculations.keys.max 
  past_calculations[ last_id + 1] = "Your Calculation Was: <span style=\"color: purple;\">#{params[:num1]} + #{params[:num2]} = #{result}</span><br><br>"
end

post "/calculator/subtract" do
  result = params[:num1].to_f - params[:num2].to_f
  last_id = past_calculations.keys.max 
  past_calculations[ last_id + 1] = "Your Calculation Was: <span style=\"color: purple;\">#{params[:num1]} + #{params[:num2]} = #{result}</span><br><br>"
end

post "/calculator/multiply" do
  result = params[:num1].to_f * params[:num2].to_f
  last_id = past_calculations.keys.max 
  past_calculations[ last_id + 1] = "Your Calculation Was: <span style=\"color: purple;\">#{params[:num1]} + #{params[:num2]} = #{result}</span><br><br>"
end

post "/calculator/divide" do
  result = params[:num1].to_f / params[:num2].to_f
  last_id = past_calculations.keys.max 
  past_calculations[ last_id + 1] = "Your Calculation Was: <span style=\"color: purple;\">#{params[:num1]} + #{params[:num2]} = #{result}</span><br><br>"
end