require "observer"
require_relative "Audience"
require_relative "Weapons"

class Gladiator
	include Observable
	attr_reader :speed, :strength, :intelligence, :weapon
  attr_accessor :health, :observers

	def initialize(speed, strength, intelligence, health)
		if (speed + strength + intelligence + health) <= 20
			 @speed = speed
			 @strength = strength
			 @intelligence = intelligence
			 @health = health
		else
			puts "YOUR DISTRUBITION EXCEEDS THE TOTAL OF 20!!"
		end
	end

	def setWeapon(weapon)
		@weapon = weapon
	end

	def lossHealth(h)
		@health -= h
		changed
		notify_observers("Health Loss")
	end

	def succeeded()
		changed
	 	notify_observers("Mission Complete")
	end

	def unsucceeded()
		changed
		notify_observers("Mission Failed")
	end

	def getHealth
		return @health
	end

end
