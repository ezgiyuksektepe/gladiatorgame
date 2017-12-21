require_relative "Gladiator"
class Arena
  attr_accessor :rivalGladiator, :isAlive
  def initialize
    raise NotImplementedError
  end

  def play(gladiator)
    battle(gladiator)
    question(gladiator)
    speed(gladiator)
  end

  def battle(gladiator)
    raise NotImplementedError
  end

  def question(gladiator)
    raise NotImplementedError
  end

  def speed(gladiator)
    raise NotImplementedError
  end

  def isAlive(gladiator)
    if gladiator.getHealth > 0
      isAlive = 1
    else
      isAlive = 0
    end
  end
end
