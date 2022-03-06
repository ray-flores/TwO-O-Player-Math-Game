require './class_player'
require './class_question'

@player1 = Player.new(1)
@player2 = Player.new(2)
@turn = false

while (@player1.life_points > 0 && @player2.life_points > 0) do
  player = (@turn == false) ? @player1 : @player2
  q = Question.new
  puts "---NEW TURN---"
  puts "#{player.name}: " + q.prompt
  print "> "
  choice = gets.chomp
  if choice.to_i == q.ans
    puts "YES! You are correct"
    puts "P1: #{@player1.life_points}/3 vs P2: #{@player2.life_points}/3"
  else
    player.life_points -= 1
    puts "#{player.name}: Seriously? No!"
    puts "P1: #{@player1.life_points}/3 vs P2: #{@player2.life_points}/3"
  end
  if player == @player1
    @turn = true
  elsif
    @turn = false
  end
end

if (@player1.life_points == 0 && player = @player2 || @player2.life_points == 0 && player = @player1) 
  puts "#{player.name} wins with a score of #{player.life_points}/3"
  puts "---GAME OVER---"
  puts "Goodbye!"
  return;
end