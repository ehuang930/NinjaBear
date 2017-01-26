require_relative "bear"
require_relative "ninja"

class Battle 

	attr_reader :fighter1, :fighter2

	def initialize(fighter1, fighter2)
		@fighter1 = fighter1
		@fighter2 = fighter2
	end

	def fight
		@fighter1.attack(@fighter2)
		@fighter2.attack(@fighter1)
		battle_status 
	end

	def battle_status
		puts "#{@fighter1.name} has #{@fighter1.health} health left"
		puts "#{@fighter2.name} has #{@fighter2.health} health left"
	end
end

bear = Bear.new("Smokey the Bear", 100, 12)
ninja = Ninja.new("Haru", 100, 13)
battle = Battle.new(bear, ninja)

# puts battle.fighter1.name
# puts battle.fighter2.name

# puts "fighter 1 : #{battle.fighter1.name}"
# puts "fighter 2 : #{battle.fighter2.name}"

puts "Today, we will be witnessing the weirdest battle of all time."
until battle.fighter1.health <= 0 || battle.fighter2.health <= 0
	battle.fight
end