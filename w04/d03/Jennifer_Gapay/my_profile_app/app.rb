require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get('/') do
  erb(:profile)
end

# get('/'){"Hello #{params[:name]}"}

# ---------

# get('/'){"Hello #{params[:name].nil? ? 'world' : params [:name]}!"}

#? is if, : is or

# ---------
# add profile html between hash - make single quote instead of double

# View here: http://localhost:4567/?name=jennifer

# get('/') do'<html>
#   <head>
#     <title>My Profile</title>
#     <meta charset="utf-8" />
#   </head>

# <body>
#   <header>About Me</header>

#   <div id="basic_info" class="personal-info">
#     <img src="http://www.mywedding.com/frankandadriana/images/Jennifer.jpg"/>
    
#     <pre>
#     Name: Jennifer Gapay, is from California and currently resides in NYC. 
#     Born: Manila, Philippines
#   </pre>

#   </div>
#   <div id="more info" class="personal-info">
#     Student: WDI @ GeneralAssemb.ly
#  </div>
#  <footer>by Jennifer 2014</footer>
# </body>

# </html>'end

# get("/name") do
# "<!doctype html>

# <html>
#   <head>
#     <title>My Profile</title>
#     <meta charset="utf-8" />
#   </head>

# <body>
#   <header>About Me</header>

#   <div id="basic_info" class="personal-info">
#     <img src="http://www.mywedding.com/frankandadriana/images/Jennifer.jpg"/>
    
#     <pre>
#     Name: Jennifer Gapay, is from California and currently resides in NYC. 
#     Born: Manila, Philippines
#   </pre>

#   </div>
#   <div id="more info" class="personal-info">
#     Student: WDI @ GeneralAssemb.ly
#  </div>
#  <footer>by Jennifer 2014</footer>
# </body>

# </html>