require_relative "fighter"

class Ninja < Fighter
 
	def initialize(name, health, power)
		super(name, health, power)
	end

	def attack(enemy)
		puts "Nobody messes with my brother!"
		enemy.lose_health(self.power)
	end
end

# ninja = Ninja.new("Jackie Chan", 100, 7)
# bear = Fighter.new("Yogi", 100, 1)

# puts ninja.attack(bear)
# puts bear.inspect
