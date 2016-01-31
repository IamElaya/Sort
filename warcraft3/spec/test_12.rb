require_relative 'spec_helper'

describe Unit do

  describe "#dead?" do

    before :each do
      @unit = Unit.new(0, 0)
    end

    it "should be dead" do 
      expect(@unit.dead?).to eql(true)
    end

    it "should really not be alive" do
      expect(!@unit.dead?).to eql(false)
    end

  end

end