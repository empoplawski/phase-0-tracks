


class Spaceship

	attr_reader :max_speed, :location, :inventory
	attr_accessor :name 

	def initialize(name, max_speed)
		@name = name
		@max_speed = max_speed
		@location = location
		@inventory = {}
		
	end

	def disable_shield
		"The shields are now down! Be careful!"
	end

	def enable_shield
		"The shields are now up!"
	end

	def warp_to(location)
		puts "Taveling at #{@max_speed} mph to #{location}"
		@current_location = location
	end

	def tractor_beam(item)
		disable_shield
		item_weight = item.chars.map { |c| c.ord}.inject(:+)

		if item_weight <= 500
			@inventory[item] = @current_location
			true

		else enable_shield
			false
		end
	end

	def pickup(item, location)
		warp_to(location)
		tractor_beam(item)
	end
end





## driver code

p spaceship = Spaceship.new("USS Enterprise", 200_000)
#p spaceship.name
#p spaceship.max_speed
#p spaceship.enable_shield
#p spaceship.disable_shield
#spaceship.warp_to("Wisconsin")
#p spaceship.tractor_beam("cow")

spaceship.pickup("fish", "toledo")
spaceship.pickup("semi_truck", "iowa")
spaceship.pickup("dog", "illinois")
spaceship.pickup("ax", "mars")
p spaceship.inventory


p spaceship = Spaceship.new("HMS Andromeda", 108_277)
#p spaceship.name
#spaceship.name= ("little_guy")
#p spaceship.name


