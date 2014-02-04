require 'spec_helper'

describe DishRating do 
subject(:dishrating) {DishRating.new}


   it { should validate_presence_of(:score) }
   it { should belong_to(:dish) }
   it { should belong_to(:judge) }

end 