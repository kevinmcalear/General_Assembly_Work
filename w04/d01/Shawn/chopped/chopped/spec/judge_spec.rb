require 'spec_helper'

describe Judge do
  let(:judge) {Judge.create}
  let(:chef) {Chef.create({name:"Chris"})}
  let(:course) {Course.create({round: 1, ingredient: "chicken"})}
  let(:chopping_block) { ChoppingBlock.create }

  it { should validate_presence_of(:name) }

  describe "#rate_dish" do 
    let(:dish) { Dish.create({name: "Chicken Wings"})}
    it { should validate_presence_of(:name)}
    it "rates a dish" do 
      expect(dish.name).to eq("Chicken Wings")
      rating = judge.rate_dish(6, judge.id, dish.id)
      expect(rating).to be_kind_of(DishRating)
      ratings = DishRating.all 
      expect(ratings).to include(rating)
      expect(rating.score).to eq(6)
    end
  end

  describe "#chop" do 

      it "removes a chef" do
        chopped_chef = chef.chop(course, chef)
        expect(ChoppingBlock.all).to include(chopped_chef)
      end
  end
end