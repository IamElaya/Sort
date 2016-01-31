class Unit

  attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def damage(enemy_attack_power)
    @health_points -= enemy_attack_power
  end

  # def attack!(enemy, attack_power = @attack_power)
  #   if alive? == true
  #     enemy.damage(attack_power) 
  #   end
  # end

    def attack!(enemy)
    if dead? then
      if !enemy.dead?
      enemy.damage(attack_power) 
      else
      puts "Stop, hes already dead!"
      end
    else
      puts "Uhh, you're dead lol."
    end
  end

  def dead?
    @health_points <= 0
  end

end


