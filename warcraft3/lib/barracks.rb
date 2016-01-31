

class Barracks #< Building

  attr_accessor :health_points, :gold, :lumber, :food, :train_peasant, :train_footman

  def initialize(health_points = 500, gold = 1000, lumber = 500, food = 80)
    @health_points = health_points
    @gold = gold
    @lumber = lumber
    @food = food
  end

  def can_train_peasant?
    if gold > 90 && food > 5
      return true
    end
  end

  def train_peasant
    if can_train_peasant? == true
      @gold -= 90
      @food -= 5
      @peasant = Peasant.new
    end
  end

    def can_train_footman?
    if gold > 135 && food > 2
      return true
    end
  end

  def train_footman
    if can_train_footman? == true
      @gold -= 135
      @food -= 2
      @footman = Footman.new
    end
  end

 def can_train_siegeengine?
    if gold > 200 && lumber > 60 && food > 3
      return true
    end
  end

  def train_siegeengine
    if can_train_siegeengine? == true
      @gold -= 200
      @lumber -= 60
      @food -= 3
      @siegeengine = SiegeEngine.new
    end
  end

   def damage(enemy_attack_power)
    # armor_reduction = (enemy_attack_power / 2)
    @health_points -= enemy_attack_power#armor_reduction
  end

  
end
