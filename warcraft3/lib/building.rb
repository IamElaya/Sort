class Building

  attr_reader :health_points

  def initialize(health_points)
    @health_points = health_points
  end


  def damage(enemy_attack_power)
    armor_reduction = (enemy_attack_power / 2)
    @health_points -= armor_reduction
  end
end