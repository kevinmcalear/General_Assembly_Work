ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "zacharystayman",
  :password => "",
  :database => "playground"
)

after do
  ActiveRecord::Base.connection.close
end