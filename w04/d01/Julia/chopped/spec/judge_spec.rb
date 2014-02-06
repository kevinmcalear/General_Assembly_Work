require 'spec_helper'

describe Judge do
  subject(:judge) { Judge.create(:name => "Alton Brown")  }

  # it "is invalid without a name" do
  #   expect(judge).to_not be_valid

  #   judge.name = "Judge Reinhold"

  #   expect(judge).to be_valid
  # end

  it { should validate_presence_of(:name) }
  it { should have_many(:dish_ratings) }

  #want this to test a judge's ability to give a rating

  describe "#rate_dish" do
    
    it "assigns a rating" do 
      judge = Judge.create(:name => "Alton Brown")
      dish = Dish.create(:name => "Pasta")

      judge.rate_dish(dish, 5)
      expect(judge.dishes).to include(dish)
    end



    # it "assigns a rating" do
    #   dish = Dish.create(:name => "Pasta")
    #   chef = Chef.create(:name => "Jon")
    #   course = Course.create(round: 1, ingredient: "asparagus") 
    #   judge = Judge.create(:name => "Alton Brown")
    #   rating = judge.rate_dish(5)
    #   expect(rating).to be_a DishRating
    #   #binding.pry

    #   expect(DishRating.all).to include rating
    # end

    # it "has a dish" do
    #   dish = Dish.create(:name => "Pasta")
    #   chef = Chef.create(:name => "Jon")
    #   course = Course.create(round: 1, ingredient: "asparagus") 
    #   judge = Judge.create(:name => "Alton Brown")
    #   rating = judge.rate_dish(5)

    #   expect(DishRating.dish_id).to be_kind_of(integer)
    # end
  end

end