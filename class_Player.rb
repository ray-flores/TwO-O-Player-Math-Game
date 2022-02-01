
class Player
  attr_accessor :life_points, :name

  def initialize(num)
    @name = "Player #{num}"
    @life_points = 3
    puts "You are Player #{num}"
  end

end


p player1 = Player.new(1)

p player2 = Player.new(2)