class Judge < ActiveRecord::Base
  self.validates(:name, {presence: true} )

  def judge_a_dish(score, dish)
    dish.dish_ratings.create({score: score, judge_id: self.id})
    # binding.pry
    course = Course.find(dish.course_id)
    course.update_block

  end


end