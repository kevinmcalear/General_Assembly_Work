ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "stevenweiss",
  :password => "",
  :database => "clowns_db"
)

after do
  ActiveRecord::Base.connection.close
end