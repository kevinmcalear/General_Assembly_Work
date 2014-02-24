class Judge < ActiveRecord::Base
  self.validates( :name, { presence: true } )
end