ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "rorybudnick",
  :password => "",
  :database => "programmingbot"
)

after do
  ActiveRecord::Base.connection.close
end