require_relative 'unit'

class SiegeEngine < Unit
  def initialize
    super(400, 50)
  end

   def attack!(enemy)
    if enemy.is_a? Barracks 
      enemy.damage(@attack_power * 2).to_i
    elsif enemy.is_a? SiegeEngine
      enemy.damage(@attack_power)
     else
      enemy.damage(@attack_power - 50).to_i
   end
 end
end