require 'spec_helper'

describe Judge do
  subject(:judge) { Judge.create(name: "Reinhold") }

  # it "is invalid without a name" do
  #   expect(judge).to_not be_valid

  #   judge.name = "Judge Reinhold"

  #   expect(judge).to be_valid
  # end

  it { should validate_presence_of(:name) }

  describe "#give_score" do
    let(:dish) {Dish.create(name: "Lasagna", course_id: 1, chef_id: 1)}
    let(:dish_rating) {judge.give_score()}
    
    it "lets judge give a score" do
      dish_rating = judge.give_score(dish, 5)
      expect( score).to be_a DishRating
      expect( course.dish_rating).to include(dish_rating)
    end

  end
end