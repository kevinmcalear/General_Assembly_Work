ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "itorresverdugo",
  :password => "",
  :database => "clowns"
)
after do
  ActiveRecord::Base.connection.close
end