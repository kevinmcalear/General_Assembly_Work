require 'spec_helper'

describe Judge do
  subject(:judge) { Judge.new }
  #subject(:dish) { Dish.new }
  
  it { should validate_presence_of( :name ) }

  # describe "#rate_dish" do
  #   it "gives a dish a rating" do
  #     judge.rate_dish(dish)
  #     # should I expect and integer return on a getter method of the rated dish object?
  #   end
  # end

end
