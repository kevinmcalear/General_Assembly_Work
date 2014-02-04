require "spec_helper"

describe Course do
  it { should have_many(:dishes) }
  it { should have_many(:chopping_blocks)}
  it { should validate_presence_of(:round)}
  it { should validate_presence_of(:ingredient)}

  describe "#eliminate" do 
    judge = Judge.create(:name=>"Reinhold")
    course = Course.create(:round=>1, :ingredient=>"bread")
    chef1 = Chef.create(:name=>"Jon") 
    chef2 = Chef.create(:name=>"Joanna")

    dish1 = Dish.create(:name=>"Chicken",:course_id =>Course.find_by(:round=>1)[:id], :chef_id=> Chef.find_by(:name=>"Jon")[:id])
    dish2 = Dish.create(:name=>"Pasta", :course_id =>Course.find_by(:round=>1)[:id], :chef_id=> Chef.find_by(:name=>"Joanna")[:id])

    dish_score1 = DishRating.create(:score=> 10,:dish_id => Dish.find_by(:name=>"Chicken")[:id], :judge_id => Judge.find_by(:name=>"Reinhold")[:id])
    dish_score2 = DishRating.create(:score=> 9,:dish_id => Dish.find_by(:name=>"Pasta")[:id], :judge_id => Judge.find_by(:name=>"Reinhold")[:id])
    
    it "eliminates the lowest score" do 
      course_id = Course.find_by(:round=>1)[:id]
      chef_id = Chef.find_by(:name=>"Joanna")[:id]
      course.eliminate(course_id)
      expect(ChoppingBlock.all).to include(chef_id)  
    end 
  end 

end

