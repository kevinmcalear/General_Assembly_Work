RAILS

rails new dog_db
bunddle install
createdb dogs_db
rails generate migration CreateDogs
rake db:migrate
(this runs a migration)
rails console
rake db:seed

routes file defines what our routes are.
in sinatra the code to execute is not in routes file
routes pass along request to controller(like code in sinatra block)

convention over configuration 
rails makes a ton of architectural decisions for you in advance 
dispenses with a lot of boiler plate .
naming; your classes, views, file names must all follow strict naming conventions 
we are using the mvc architecture as well as restful 
controllers are about receiving and responding to http requests. traffic cop.
views are how you present
model is bahavior of data 

rails server can open simulataneous connections to database. 

Gemfile, database.yml. routes.rb. index.html.erb
/db/migrate/file 
models/dog.rb

ROUTE MATCHING AND PARAMS
clowns/new
clowns/:id
params is a service our framework provides that takes all the necessary data for us to complete any transaction in a single spot. easy to use.

params takes data from the URLs query string
takes information from a well crafted restful route via 
get("entity/:id") its creating a regular expression, matching strings that fit that 

building controller actions:
index
new
create 
show

start with routes, go to controller and define that, then go to view

http --> routes --> controllers(connected to models) --> views --> back to http










