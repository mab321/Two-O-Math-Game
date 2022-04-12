class Player 
  attr_accessor :name, :lives, :score
  
  def initialize(name)
    self.name = name
    self.lives = 3
    self.score = 0
  end

  def decrease_life
    self.lives -= 1
  end 

  def increase_score
    self.score += 1
  end 

end