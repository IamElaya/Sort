class Board

  # class OffBoardError < StandardError
  # end
 

  MAX_X = 9

  # Types of Ship
  BATTLESHIP = 'B'
  DESTROYER  = 'D'
  CRUISER    = 'C'
  EMPTY      = '~'

  # The grid below represents the game grid. It's a hash of arrays of strings. Don't let the weird syntax confuse you. It's just a fancy way of defining an array of strings. Each row is actual an array of strings. Each spot is either empty (~) or has a ship: Battleship (B), Destroyer(D), or Cruiser(C).
  GRID = {
    #     0 1 2 3 4 5 6 7 8 9
    A: %w{~ ~ ~ C ~ ~ ~ B ~ ~},
    B: %w{~ ~ ~ C ~ ~ ~ B ~ ~},
    C: %w{~ ~ ~ ~ ~ ~ ~ B ~ ~},
    D: %w{~ ~ ~ ~ ~ ~ ~ B ~ ~},
    E: %w{~ ~ C C ~ ~ ~ ~ ~ ~},
    F: %w{~ ~ ~ ~ ~ D D D D ~},
    G: %w{~ ~ ~ ~ ~ ~ ~ ~ ~ ~}
  }

   @board = GRID
   attr_reader :play

   def self.play(coordinate)
    # raise OffBoardError, "Play #{coordinate} off board" if coordinate 
    target = @board[coordinate[0].to_sym][coordinate[1].to_i - 1]
    if target == BATTLESHIP 
      return Battleship.new
    elsif target == DESTROYER
      return Destroyer.new
    elsif target == CRUISER
      return Cruiser.new
    else
      target = EMPTY
      return nil
    end
  end

end
