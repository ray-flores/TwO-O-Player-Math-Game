require './class_player'
require './class_question'



def start

  @player1 = Player.new(1)
  @player2 = Player.new(2)

  @turn = false

  def ask_question
    if @player1.life_points > 0 && @player2.life_points > 0 

      q = Question.new

      @my_turn = "Player 1"

      if @turn == false
        @my_turn = "Player 1"
      end

      if @turn == true 
        @my_turn = "Player 2"
      end
  
      puts "#{@my_turn}: " + q.prompt
      print "> "
      
      choice = gets.chomp
  
      if choice.to_i == q.ans
        puts "#{@my_turn}: YES! You are correct"
        puts "P1: #{@player1.life_points}/3 vs P2: #{@player2.life_points}/3"
        puts "---NEW TURN---"
        @turn = !@turn
      else
        if @turn == false
          @player1.life_points -= 1
        else
          @player2.life_points -= 1
        end

        if @player1.life_points == 0 || @player2.life_points == 0
          if @player1.life_points == 0
            puts "Player 2 wins with a score of #{@player2.life_points}/3"
            puts "----GAME OVER----"
            puts "Good bye!"
            return;
          else
            puts "Player 1 wins with a score of #{@player1.life_points}/3"
            puts "----GAME OVER----"
            puts "Good bye!"
            return;
          end
        end

        puts "#{@my_turn}: Seriously? No!"
        puts "P1: #{@player1.life_points}/3 vs P2: #{@player2.life_points}/3"
        puts "---NEW TURN---"
        @turn = !@turn
      end

      ask_question

    end

  end

  ask_question

end

start


  # function starts, two players are instantiated  

  # method: calls question class by first player... changes boolean to "false" to swtich to player two next round, and vise-versa w/ IF statement

  # generate two random integers between 1 and 20

  # generate sum of those two integers and set answer instance variable

  # generate question statement and input from user

  # take input and compare to ans

  # IF RIGHT: print validation and scoreboard of lives
  
  # IF WRONG: print warning decr life points and show scoreboard

# IF both lives are still > 0, new turn begins using second player (could use boolean to change who's asking next)

# IF one player is == 0, print winner and their score and GAME OVER


