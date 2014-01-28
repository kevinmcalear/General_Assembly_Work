require 'spec_helper'
require_relative '../lib/grammys'

describe Grammy do

  describe "#grammy_winner" do
    let(:winner) { Grammy.new("Macklemore") }

    it "shows the winner" do
      expect( winner.grammy_winner ).to eq("Macklemore")
    end
  end
  
end