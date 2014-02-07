ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "jessicasimon",
  :password => "",
  :database => "clowns_db"
)

after do
  ActiveRecord::Base.connection.close
end