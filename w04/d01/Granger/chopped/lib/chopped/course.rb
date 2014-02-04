class Course < ActiveRecord::Base
  has_many :dishes
  has_many :chopping_blocks

  def update_block
    worst = self.dishes.first
    self.dishes.each do |dish|
      if dish.score > worst.score
        worst = dish
      end
    end

    block = self.chopping_blocks.first || self.chopping_blocks.create(chef_id: worst.chef_id)
    block.chef_id = worst.chef_id
    # binding.pry
  end


end