class Judge < ActiveRecord::Base
 self.validates(:name, {presence: true})
end


def give_score
end
