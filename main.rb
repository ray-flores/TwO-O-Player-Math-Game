require './class_player'
require './class_question'



def start

  player1 = Player.new(1)
  player2 = Player.new(2)

  turn = false

  if player1.life_points > 0 && player2.life_points > 0 && turn == false

    q = Question.new
    turn = true

    puts "Player 1: " + q.prompt
    print "> "
    
    choice = gets.chomp

    if choice.to_i == q.ans
      puts "Player 1: YES! You are correct"
      puts "P1: #{player1.life_points}/3 vs P2: #{player2.life_points}/3"
      puts "---NEW TURN---"
    else
      player1.life_points -= 1
      puts "Player 1: Seriously? No!"
      puts "P1: #{player1.life_points}/3 vs P2: #{player2.life_points}/3"
      puts "---NEW TURN---"
    end



  end

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


