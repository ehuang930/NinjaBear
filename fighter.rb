class Fighter 

	attr_reader :name
	attr_accessor :health, :power

	def initialize(name, health, power)
		@name = name
		@health = health
		@power = power 
	end

	def attack(enemy)
		enemy.lose_health(self.power)
		#=> Self is referring to the object where we call the method. In this we push in the attack's power(self.power)
		#=> the . calls the previous entity, so.. enemy.lose_health is referring to the lost health of the enemy
	end

	def lose_health(power_attacker)
		self.health -= power_attacker
		#=> Self.health = self.health - power_attacker => this will show the left over health
		#=> self is referring to the object where we call the method on.. in this case, the attacked objects health 
	end

end 

rocky = Fighter.new("Rocky", 110, 15)
arnie = Fighter.new("Arnold Schwarzeneggar", 110, 25)

# puts rocky.attack(arnie)
# puts arnie.inspect

# puts arnie.attack(rocky)
# puts rocky.inspect

# puts rocky.attack(arnie)
# puts arnie.inspect