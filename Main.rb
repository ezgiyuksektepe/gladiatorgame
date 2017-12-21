require_relative "Gladiator"
require_relative "Arena"
require_relative "SpaceArena"
require_relative "JungleArena"

class Main

	puts"Create Your Character... Enter speed, strength, intelligence, health"
	speed=gets.chomp().to_i
	strength=gets.chomp().to_i
	intelligence=gets.chomp().to_i
	health=gets.chomp().to_i
	gladiator = Gladiator.new(speed, strength, intelligence, health)

	audience1 = Audience.new()
	audience2 = Audience.new()
	audience3 = Audience.new()
	audience4 = Audience.new()
	audience5 = Audience.new()
	audience6 = Audience.new()
	audience7 = Audience.new()
	audience8 = Audience.new()
	audience9 = Audience.new()
	audience10 = Audience.new()

	gladiator.add_observer(audience1)
	gladiator.add_observer(audience2)
	gladiator.add_observer(audience3)
	gladiator.add_observer(audience4)
	gladiator.add_observer(audience5)
	gladiator.add_observer(audience6)
	gladiator.add_observer(audience7)
	gladiator.add_observer(audience8)
	gladiator.add_observer(audience9)
	gladiator.add_observer(audience10)

	puts"Choose the Arena you want to fight... Press 1 For Space Arena and Press 2 For Jungle Arena"
	choice=gets.chomp().to_s

	if choice == "1"
		arena1 = SpaceArena.new
		arena1.play(gladiator)
	elsif choice == "2"
		arena2 = JungleArena.new
		arena2.play(gladiator)
	end

	gladiator.delete_observer(audience1)
	gladiator.delete_observer(audience2)
	gladiator.delete_observer(audience3)
	gladiator.delete_observer(audience4)
	gladiator.delete_observer(audience5)
	gladiator.delete_observer(audience6)
	gladiator.delete_observer(audience7)
	gladiator.delete_observer(audience8)
	gladiator.delete_observer(audience9)
	gladiator.delete_observer(audience10)

end
