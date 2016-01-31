require_relative 'animal'

module Flight
  attr_accessor :airspeed_velocity
  def fly
    puts "I'm #{@animal_name}, I can fly!"
  end
end


class Mammal < Animal
  def initalize(animal_name, num_legs, num_hands)
    super(animal_name, num_legs, num_hands)
    warm_blooded?
    has_fur? 
  end
end

class Primate < Mammal
  def initialize
    super(2, 2)
  end
end

class Chimpanzee < Primate
  def initialize
    has_tail? == true 
  end
end

chimpo = Chimpanzee.new

class Bat < Mammal
  def initialize
    super("bat", 2, 2)
    has_wings?
  end
end

zubat = Bat.new

class Amphibian < Animal
  def initialize(num_legs, num_hands)
    super(num_legs, num_hands)
    lays_eggs? 
    !warm_blooded?
  end
end


class Frog < Amphibian
  def initialize
    !has_tail? 
  end
end

frogger = Frog.new

class Parrot < Animal
  include Flight
  def initialize(animal_name, num_legs, num_hands)
    super(animal_name, num_legs, num_hands)
    warm_blooded?
    lays_eggs? 
    has_wings? 
  end
end

polly = Parrot.new("polly", 2, 0)
polly.fly


