require 'pry'

class Course < ActiveRecord::Base
  has_many :dishes
  has_many :chopping_blocks
  has_many :chefs, :through => :chopping_blocks
  self.validates(:round, { :presence => true })
  self.validates(:ingredient, { :presence => true })

  def find_worst_dish
    scores = {}


    

    self.dishes.each do |dish|
      sum = 0
      dish.dish_ratings.each {|rating|
        sum += rating[:score]}
      scores[dish] = sum / dish.dish_ratings.count 
    end

    return scores.sort_by { |key, value| value }.first[0]
    # return scores.order("")
  end

  # def find_worst_dish
  #   # self.dishes.order("score desc").first
  # end

  def chop(dish)
    self.chopping_blocks.create(:chef_id => dish.chef_id, :course_id => self.id)
  end

end


# http://edgeguides.rubyonrails.org/active_record_querying.html#having
    # Order.select("date(created_at) as ordered_date, sum(price) as total_price").group("date(created_at)").having("sum(price) > ?", 100)

# self.dishes.minimum("chef_id")
# returns 2

# self.dishes.minimum("dish_id, average(score)").group("average")
# returns error







