require 'spec_helper'
require 'pry'

describe DishRating do
  let(:chef) { Chef.create(name: "Mario Batali")}
  let(:course) { Course.create(round: 1, ingredient: "chocolate")}
  # subject(:dish) { Dish.create }
  # subject(:judge) { Judge.create(name: "Jessica") }
  let(:dish) { chef.make_dish(course, "Micro emulsion of octopus brain")}
  let(:dish_rating){DishRating.create!(score: 1) }

  it {should validate_presence_of(:score)}
  it {should validate_presence_of(:dish_id)}
  it {should validate_presence_of(:judge_id)}
  it { should validate_numericality_of(:score).is_greater_than(0) }
  it { should validate_numericality_of(:score).is_less_than(6) }
  # it { should validate_uniqueness_of(:dish_id).scoped_to(:judge_id) }

  describe "#score" do
    let(:judge) {Judge.create(name: "jessica")}
    let(:chef) {Chef.create(name: "mario batali")}
    let(:course) {Course.create(round: 1, ingredient: "chocolate")}
    let(:dish) {chef.make_dish(course, "Micro emulsion of octopus brain")}
    let(:dish1) {dish.dish_ratings.create(score: 4, judge_id: 1)}
    let(:judge1) {Judge.create(name: "bob")}
    let(:dish2) {dish.dish_ratings.create(score: 4, judge_id: 2)}

  it "creates two judge scores" do
    judge
    judge1
    dish
    dish1

    expect(dish1).to be_kind_of DishRating
    expect(dish2).to be_kind_of DishRating
  end
it "creates an average of the two judge scores" do
   judge
   judge1
   dish
   dish1

   expect((dish1.score + dish2.score)/2).to eq(4)
   expect(DishRating.chopped).to eq(4)

  end

  end
#     let(:dish_rating2){DishRating.create(score: 5) }
#     # average = (dish_rating1 + dish_rating2)/2
#     it "creates two dish ratings that average above 3" do
#       expect(average).to eq(4.5)
#     end
#   end
end


