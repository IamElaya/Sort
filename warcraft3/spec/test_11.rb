require_relative 'spec_helper'

describe Footman do
  before :each do
    @footman = Footman.new
  end


describe Barracks do
  before :each do
    @barracks = Barracks.new
  end

  describe "#attack!" do
    it "should do 5 (AP) damage to the barracks." do
      expect(@barracks).to receive(:damage).with(10 / 2) 
      @footman.attack!(@barracks)
    end

  describe "#damage" do
    it "should only take 5 (AP) damage from the footman." do
      @barracks.damage(5)
      expect(@barracks.health_points).to eq(495)
    end
  end
  end
end
end