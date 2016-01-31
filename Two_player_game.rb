@players = [
  { 
    player: 1,
    score: 0,
    lives: 3,

  },
  {
    player: 2,
    score: 0,
    lives: 3,
  },
]

# current_player = "player 1"
@current_player = "player 1"
def switch_players
  if @current_player == "player 1"
      @current_player = "player 2"
  else
    @current_player = "player 1"
  end
  return @current_player
end


while @players[0][:lives] > 0 || @players[1][:lives] > 0

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
    if current_player == "player 1" then
      if @player_answer == @answer.to_s
      puts "Now you " + current_player.to_s + " have a score of " + (@players[0][:score] += 1).to_s + " ."
      else
      puts "Now you " + current_player.to_s + " have " + (@players[0][:lives] -= 1).to_s + " life." 
      end
    else 
      if current_player == "player 2" then
      if @player_answer == @answer.to_s
      puts "Now you " + current_player.to_s + " have a score of " + (@players[1][:score] += 1).to_s + " ."
      else
      puts "Now you " + current_player.to_s + " have " + (@players[1][:lives] -= 1).to_s + " life." 
      end
    end
  end
end


def play(player)
  generate_question
  prompt_player_for_answer
  verify_answer(player)
  puts switch_players
end
  
  play(@current_player)

end





