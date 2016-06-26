class Player

  attr_accessor :name
  attr_reader :life, :points

  def initialize(name)
    @name = name
    @life = 3
    @points = 0
  end

  def lose_life
    @life -= 1
  end

  def gain_points
    @points += 1
  end

  def dead?
    @life == 0
  end

end