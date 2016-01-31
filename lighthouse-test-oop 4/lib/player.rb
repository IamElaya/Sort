class Player

  attr_reader :hits, :misses, :shots_fired, :fire

  def initialize(hits = [], misses = [], shots_fired = 0)
    @hits = hits
    @misses = misses
    @shots_fired = shots_fired
  end

  def fire(coordinate)
    if shots_fired < 10
        @shots_fired += 1
        target = Board.play(coordinate)
        if target.is_a? Ship
          @hits<<coordinate
          return target
        else
          !target.is_a? Ship
          @misses<<coordinate
          return nil
        end
    else
      return false
    end
  end

end
