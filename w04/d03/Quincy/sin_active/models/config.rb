ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "QBreezy",
  :password => "sparky",
  :database => "playground"
)
after do
  ActiveRecord::Base.connection.close
end