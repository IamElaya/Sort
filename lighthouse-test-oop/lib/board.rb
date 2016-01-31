class Board

  class OffBoardError < StandardError
  end
 

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
      letter = coordinate[0]

    if coordinate.length == 3
      number = "#{coordinate[1]}" + "#{coordinate[-1]}"
    else
      number = "#{coordinate[1]}"
        binding.pry
    end
    # number = coordinate.select(/\d/).join('')
    # target = @board[letter.to_sym][number.to_i - 1]
  #   puts letter
  #   puts number.to_i - 1
  # # puts target

    raise OffBoardError, "Play #{coordinate} off board" if letter!=~/[A-G]/ || (number!=/[1-9]|[0]/)

  #   # raise OffBoardError, "Play #{coordinate} off board" if @board[coordinate][0]!=/"A-G"/ || @board[coordinate][1].to_i>=1 && @board[coordinate][1].to_i<=10
  #   target = @board[coordinate[0].to_sym][coordinate[1].to_i - 1]
    target = @board[letter.to_sym][number.to_i - 1]
    if target == BATTLESHIP 
      return Battleship.new
    elsif target == DESTROYER
      return Destroyer.new
    elsif target == CRUISER
      return Cruiser.new
    else
      target == EMPTY
      return nil
    end
  end

end
