class Player

DEFAULT_LIFE = 100
DEFAULT_DAMAGE = 10

attr_reader :name, :life

  def initialize(name,life=DEFAULT_LIFE)
    @name = name
    @life = life
  end

  def take_on_damage
    @life -= 10
  end

  def dead?
    @life == 0
  end


end
