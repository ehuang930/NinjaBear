require_relative "fighter"

class Bear < Fighter

	def initialize(name, health, power)
		super(name, health, power)
	end

	def attack(enemy)
		puts "Only you can prevent forest fires!"
		enemy.lose_health(self.power)
	end

end

# bear = Bear.new("Smokey the Bear", 100, 12)
# ninja = Fighter.new("Jet Li", 100, 10)

# puts ninja.attack(bear)
# puts bear.inspect

# puts bear.attack(ninja)
# puts ninja.inspect