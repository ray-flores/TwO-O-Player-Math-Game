
class Player
  attr_accessor :life_points, :name

  def initialize(num)
    @name = "Player #{num}"
    @life_points = 3
    puts "Welcome Player #{num}"
  end

end


# p player3 = Player.new(3)
# p player4 = Player.new(4)