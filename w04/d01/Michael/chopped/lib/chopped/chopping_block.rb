class ChoppingBlock <ActiveRecord::Base
  belongs_to :chef
  belongs_to :course
  self.validates(:chef_id, { presence: true })
end 