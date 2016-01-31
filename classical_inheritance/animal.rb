class Animal
  attr_reader :num_legs, :num_hands :warm_blooded?, :lays_eggs?, :has_wings?, :has_fur

  def initialize(animal_name, num_legs, num_hands)
    @animal_name = animal_name
    @num_legs = num_legs
    @num_hands = num_hands
  end
  
  def warm_blooded?
    puts "is warm blooded."
  end

  def lays_eggs?
    puts "lays eggs."
  end

  def has_wings?
    puts "has wings."
  end

  def has_fur?
    puts "has fur."
  end

  def has_tail?
    puts "has tail."
  end

end

