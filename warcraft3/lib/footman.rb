# http://classic.battle.net/war3/human/units/footman.shtml

require_relative 'unit.rb'
require_relative 'barracks'

class Footman < Unit


# attr_accessor :health_points, :attack_power

  def initialize#(health_points = 60, attack_power = 10)
    # @health_points = health_points
    # @attack_power = attack_power
    super(60, 10)
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

  def attack!(enemy)
      if enemy.is_a? Barracks
        enemy.damage(@attack_power / 2).to_i.ceil
      else
        enemy.damage(@attack_power)
      end
    end
end

