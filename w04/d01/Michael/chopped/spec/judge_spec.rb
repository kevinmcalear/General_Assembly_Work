require 'pry'
require 'spec_helper'

describe Judge do
  subject(:judge) { Judge.create(:name => 'Reinhold')}

  it { should validate_presence_of(:name) }
  it { should have_many(:dish_ratings)}

  # it "is invalid without a name" do
  #   expect(judge).to_not be_valid

  #   judge.name = "Judge Reinhold"

  #   expect(judge).to be_valid
  # end



  describe "#gives_score" do 
    before do 
      @course = Course.create(:round => 1, :ingredient => 'sriracha')
      @chef = Chef.create(:name =>"Jon")
      @dish = Dish.create(:name => "Octopus Surprise", :course_id => Course.find_by(:round =>1)[:id], :chef_id => Chef.find_by(:name=>"Jon")[:id]
        )

    end 
    it "gives a score to a dish" do
      dish_ratings = judge.gives_score(@dish,10)
      expect(dish_ratings).to be_a DishRating
      expect(@dish.dish_ratings).to include(dish_ratings)
    end 

  end 

end

# binding.pry