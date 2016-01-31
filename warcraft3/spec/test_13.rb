require_relative 'spec_helper'

describe Footman do

    before :each do
      @unit1 = Unit.new(30, 5)
      @unit2 = Unit.new(0, 7)
    end

    describe "#attack!" do
      it "should not be able to attack someone dead." do 
      expect(@unit2.dead?).to eql(true)
      @unit1.attack!(@unit2)
    end

      it "should not be able to attack while dead." do
      expect(@unit2.dead?).to eql(true)
      @unit2.attack!(@unit1)
    end

  end

end