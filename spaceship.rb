


class Spaceship

	attr_reader :max_speed
	attr_accessor :name

	def initialize(name, max_speed)
		@name = name
		@max_speed = max_speed
	end
end

## driver code

p spaceship = Spaceship.new("USS Enterprise", 200_000)
p spaceship.name
p spaceship.max_speed
p spaceship = Spaceship.new("HMS Andromeda", 108_277)
p spaceship.name
spaceship.name= ("little_guy")
p spaceship.name