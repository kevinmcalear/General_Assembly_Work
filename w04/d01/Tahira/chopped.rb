require "active_record"

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "taidaadaya",
  :password => "",
  :database => "chopped_db"
  )

class chefs < ActiveRecord::Base


end


class courses < ActiveRecord::Base
end

class judges < ActiveRecord::Base
end