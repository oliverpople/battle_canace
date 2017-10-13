class Player

  attr_reader :name, :hp_value

  DEFAULT_HP_VALUE = 60

  def initialize(name, hp_value = DEFAULT_HP_VALUE)
    @name = name
    @hp_value = hp_value
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hp_value -= 10
  end

end
