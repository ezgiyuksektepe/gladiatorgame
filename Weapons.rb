class Weapons

  attr_accessor :power
  def initialize
    raise NotImplementedError
  end
end

class Lightsaber < Weapons
  def initialize
    @power = 1
  end
end

class Spacegun < Weapons
  def initialize
    @power = 2
  end
end

class Axe < Weapons
  def initialize
    @power = 1
  end
end

class Archer < Weapons
  def initialize
    @power = 2
  end
end
