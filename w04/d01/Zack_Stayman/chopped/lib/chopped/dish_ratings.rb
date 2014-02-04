class DishRating < ActiveRecord::Base
  has_many :judges
  has_many :dishes

  validates :dish_id, presence: true
  validates :judge_id, presence: true
  validates :score, presence: true
  validates :dish_id, uniqueness: {scope: :judge_id}
  validates_numericality_of :score, greater_than: 0, less_than: 6  


  def self.chopped
    scores_array = []

    
    self.all.each { |score| 
    scores_array << score.score }
    average = (scores_array.reduce(:+))/self.all.count

    if average < 3
      puts "CHOPPED"
      self.all.first.dish_id.chef_id
    else
      puts "SAFE"
  end


end