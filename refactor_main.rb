require './class_player'
require './class_question'

@player1 = Player.new(1)
@player2 = Player.new(2)
@turn = false

while (player1.life_points > 0 && player2.life_points > 0) do
  player = (turn == false) ? player1 : player2
  q = Question.new
  puts "#{player}: " + q.prompt
  print "> "
  choice = gets.chomp
  if choice.to_i == q.ans
    puts "YES! You are correct"
    puts "P1: #{player1.life_points}/3 vs P2: #{player2.life_points}/3"
  else
    player.life_points -= 1
    puts "#{player}: Seriously? No!"
    puts "P1: #{player1.life_points}/3 vs P2: #{player2.life_points}/3"
  end
  turn = true
  puts "---NEW TURN---"
end

if (player.life_points == 0)
  puts "#{player}"


end