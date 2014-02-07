require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get "/" do
'<!DOCTYPE HTML>

<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>Brach Zadys Sinatra Calculator</title>
<style>

    .clearfix:after {
      content: " "; /* Older browser do not support empty content */
      visibility: hidden;
      display: block;
      height: 0;
      clear: both;
    }
    body {
      margin:0;
      background: #8AE65C;
      font-family: Futura;
    }
    header {
      font-size: 24;
      font-family: Futura, sans-serif;
      background: url(\'http://www.typoscriptics.de/soroban/exhibition/pictures/soro1-large.jpg\')
    }
    h1 a {
      color: white;
    }
    h1, h2, h3 {
      font-family: Futura, sans-serif;
    }
    h1 {
      font-size: 140px;
      margin: 0;
      padding: 200px;
    }
    li {
      list-style: none;
    }
    section, aside {
      margin: 7%;
      width: 30%;
      padding: 2.5%;
      border: 3px solid white;
    }
    section {
      float: left;
    }
    aside {
      float: right;
    }
    footer {
      margin: 1em;
    }
</style>

</head>

<body>

  <header>
    <h1><a href="http://localhost:4567/calculator">the Calculator</a></h1>
  </header>
  
  <div class="clearfix">
  <section>
  
    <article>
      
        <h2>This will be the only post on this page</h2>
        <p>Posted on <time datetime="2014-02-04T16:31:24+02:00">February 4th 2014</time> by <a href="#">Writer</a> - <a href="#comments">0 comments</a></p>
      
      <p>And that post is going to be all about the calculator I am about to make. </p>
      <h3>Did you know?</h3>
      <p>Some have said a computer is nothing more than a very large calculator. But! They are forgetting one thing: the letters. Real calculators only have a handful of letters! Also they are much more inexpensive, because <em>screens</em>. That is why computer scientists today say it is better to think of a computer as more of a color tv than something you would bring to math class. </p> 
    </article>
    
  </section>

  <aside>
    <input type="button" value="Click here for the latest and greatest in Calculator UX!" onclick="location.href=\'http://localhost:4567/calculator\';"></input>
    <h2>About section</h2>
    <p>Why are you looking over here? Just click on the link to look at the calculator. </p>
    <img src="http://ak3.picdn.net/shutterstock/videos/2383145/preview/stock-footage-punching-numbers-into-a-calculator.jpg">
  </aside>
  </div>

  <footer>
    <p>Copyright 2014 Brach Zady</p>
  </footer>

</body>

</html>'

end

past_calculations = { 1 => "42", 2 => "69", 3 =>"26" }

get '/calculator' do
  "<p style=\"font-size:32px; \">#{past_calculations.values.join(', ')}</p><a href=\"http://localhost:4567/\">Get outta here!</a>"
end

get '/calculator/:past_calculation_solution_id' do
  id = params[:past_calculation_solution_id].to_i
  entry = past_calculations[id]
  if entry
    "<p style=\"margin: 20% 0 0 0; text-align: center; font-size:128px; \">#{entry}</p>"
  else
    '<p style="margin: 20% 0 0 0; text-align: center; font-size:32px;">YOU HAVEN\'T CALCULATED ENOUGH GET TO THE NUMBER CRUNCHING NERRRD</p>'
  end
end

post '/calculator/add' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i + num2.to_i
  last_id = past_calculations.keys.max
  past_calculations[last_id + 1] = answer
end

post '/calculator/subtract' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i - num2.to_i
  last_id = past_calculations.keys.max
  past_calculations[last_id + 1] = answer
end

post '/calculator/multiply' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i * num2.to_i
  last_id = past_calculations.keys.max
  past_calculations[last_id + 1] = answer
end

post '/calculator/divide' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i / num2.to_i
  last_id = past_calculations.keys.max
  past_calculations[last_id + 1] = answer
end