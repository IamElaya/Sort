require_relative 'spec_helper'

describe SiegeEngine do
  before :each do
    @siegeengine = SiegeEngine.new
  end

  describe Barracks do

    before :each do
      @barracks = Barracks.new
  end

    describe "#can_train_siegeengine?" do
    it "returns true if there are enough resources to train a siegeengine" do
      expect(@barracks.can_train_siegeengine?).to be_truthy
    end

    it "returns false if there isn't enough food" do
      expect(@barracks).to receive(:food).and_return(2)
      expect(@barracks.can_train_siegeengine?).to be_falsey
    end

    it "returns false if there isn't enough gold" do
      expect(@barracks).to receive(:gold).and_return(199)
      expect(@barracks.can_train_siegeengine?).to be_falsey
    end

     it "returns false if there isn't enough lumber" do
      expect(@barracks).to receive(:lumber).and_return(59)
      expect(@barracks.can_train_siegeengine?).to be_falsey
    end
  end

  describe "#train_siegeengine" do
    it "does not train a siegeengine if there aren't enough resources" do
      expect(@barracks).to receive(:can_train_siegeengine?).and_return(false)
      expect(@barracks.train_siegeengine).to be_nil
    end
    it "trains a siegeengine if there are enough resources" do
      expect(@barracks).to receive(:can_train_siegeengine?).and_return(true)
      expect(@barracks.train_siegeengine).to be_a(SiegeEngine)
    end
  end

  describe "#attack!" do
    it "should do 100 (AP) damage to the barracks." do
      expect(@barracks).to receive(:damage).with(50 * 2) 
      @siegeengine.attack!(@barracks)
    end

   it "should do 50 (AP) damage to the siegeengine." do
      expect(@siegeengine).to receive(:damage).with(50) 
      @siegeengine.attack!(@siegeengine)
    end

    it "should not be able to attack a footman." do
      expect(@footman).to receive(:damage).and_return(nil)
      @siegeengine.attack!(@footman)
    end
end
end
end


