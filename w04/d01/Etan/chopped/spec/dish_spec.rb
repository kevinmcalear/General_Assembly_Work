require "spec_helper"


describe Dish do
  it { should belong_to(:chef) }
  it { should have_many(:dish_ratings)}
  it { should have_many(:judges).through(:dish_ratings) }
  it { should belong_to(:course) }

  describe "#dish_score" do
    let(:dish){Dish.create(name: "Steak Tartar")}
    let(:judge){Judge.create(name: "Judge Judy")}  


    it "returns a dish rating" do
      expect(dish.dish_rating(4)).to be_a DishRating
    end
  end

end 