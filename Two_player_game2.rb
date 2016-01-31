
# @players = [
#   { 
#     player: 1,
#     score: 0,
#     lives: 3,

#   },
#   {
#     player: 2,
#     score: 0,
#     lives: 3,
#   },
# ]

# # current_player = "player 1"
# @current_player = "player 1"
# def switch_players
#   if @current_player == "player 1"
#       @current_player = "player 2"
#   else
#     @current_player = "player 1"
#   end
#   return @current_player
# end


# while @players[0][:lives] > 0 || @players[1][:lives] > 0

#   def generate_question
#     @random_number_1 = rand(1..20)
#     @random_number_2 = rand(1..20)
#     @answer = @random_number_1 + @random_number_2
#     puts " What does " + @random_number_1.to_s + " plus " + @random_number_2.to_s + " equal?"
#   end



#   def prompt_player_for_answer
#     prompt = "< "
#     puts "What is your answer?"
#     print prompt
#     @player_answer = gets.chomp
#     return @player_answer.to_i
#   end



#   def verify_answer(current_player)
#     if current_player == "player 1" then
#       if @player_answer == @answer.to_s
#       puts "Now you " + current_player.to_s + " have a score of " + (@players[0][:score] += 1).to_s + " ."
#       else
#       puts "Now you " + current_player.to_s + " have " + (@players[0][:lives] -= 1).to_s + " life." 
#       end
#     else 
#       if current_player == "player 2" then
#       if @player_answer == @answer.to_s
#       puts "Now you " + current_player.to_s + " have a score of " + (@players[1][:score] += 1).to_s + " ."
#       else
#       puts "Now you " + current_player.to_s + " have " + (@players[1][:lives] -= 1).to_s + " life." 
#       end
#     end
#   end
# end


# def play(player)
#   generate_question
#   prompt_player_for_answer
#   verify_answer(player)
#   puts switch_players
# end
  
#   play(@current_player)

# end

class Player
  attr_accessor :score, :life

  def initialize (score = 0, life = 3)
    # @player1 = player1
    # @player2 = player2
    @score = score
    @life = life
  end

  def alive?
    @life > 0
  end

  def lose_life
    @life -= 1
  end

  def gain_points
    @score += 1
  end

  players = []
  players[0] = Player.new
  players[1] = Player.new

  current_player = 0
  game_over = false

  def generate_question
    @random_number_1 = rand(1..20)
    @random_number_2 = rand(1..20)
    @answer = @random_number_1 + @random_number_2
    puts " What does " + @random_number_1.to_s + " plus " + @random_number_2.to_s + " equal?"
  end

  def prompt_player_for_answer
    prompt = "< "
    puts "What is your answer?"
    print prompt
    @player_answer = gets.chomp
    return @player_answer.to_i
  end

  def verify_answer(current_player)
    if current_player == players[0] then
      if @player_answer == @answer.to_s
      puts "Now you " + current_player.to_s + " have a score of " + gain_points.to_s + " ."
      else
      puts "Now you " + current_player.to_s + " have " + lose_life.to_s + " life." 
      end
    else 
      if current_player == players[1] then
      if @player_answer == @answer.to_s
      puts "Now you " + current_player.to_s + " have a score of " + gain_points.to_s + " ."
      else
      puts "Now you " + current_player.to_s + " have " + lose_life.to_s + " life." 
      end
    end
  end

    def play(current_player)
      generate_question
      prompt_player_for_answer
      verify_answer(current_player)
    end
  
  while !game_over do
      players[current_player].play

      if check_for_game_over
        game_over = true
      else
        current_player = (current_player + 1) % 2
      end
end







