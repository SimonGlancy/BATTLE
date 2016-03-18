class Player
  START_POINTS = 100
  DEDUCT_POINTS = 10
  attr_reader :name, :points

  def initialize(name)
    @name = name
    @points = START_POINTS
  end

  def deduct
    @points -= rand(0..DEDUCT_POINTS)
  end


  def dead?
    @points <= 0
  end

end
