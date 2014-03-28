class Task < ActiveRecord::Base
	validates :todo, presence: true
end
