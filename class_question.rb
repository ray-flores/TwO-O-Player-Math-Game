

class Question
  attr_accessor :ans, :prompt
  
  def initialize
    @x = rand(1..20)
    @y = rand(1..20)
    @ans = @x + @y
    @prompt = "What does #{@x} + #{@y} equal?" 
  end

end


q1 = Question.new

puts q1.prompt

