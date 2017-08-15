
#create santa class with methods to give attributes and state

class Santa

	attr_reader :speak, :eat_milk_and_cookies, :about, :get_mad_at

	attr_accessor :gender, :age, :ethnicity

	def initialize(gender, ethnicity)
		puts "initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0	
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	#def eat_milk_and_cookies
	#	puts "What kind of cookie did Santa eat?"
	#	cookie = gets.chomp
	#	puts "That was a good #{cookie} cookie!"
	#end

	def about
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
	end

	def get_mad_at(reindeer)
		puts "#{reindeer} you know what you did..."
	end

	def celebrate_birthday
		@age += 1
		puts "Santa is now #{@age}"
	end
end

# random santa maker

	def gender_generator
		genders = ["he", "she", "he-man", "no-man", "agender", "all genders", "your guess is as good as mine"]
		gender = genders[rand(genders.length)]
		puts "Santa is now #{gender}"
	end


	def ethniticy_generator
		ethnicities = ["white", "black", "hispanic", "african", "asian", "nun-ya", "n/a"]
		ethnicity = ethnicities[rand(ethnicities.length)]
		puts "Santa is now #{ethnicity}"
	end

#getter methods

	def age
		@age
	end

	def ethniticity
		@ethnicity
	end

	def gender
		@gender
	end

#setter method

	def gender=(new_gender)
		@gender = new_gender
	end


100.times do

	santa = Santa.new(gender_generator, ethniticy_generator)
	santa.speak
	#santa.eat_milk_and_cookies
	santa.age = rand(140)
	santa.celebrate_birthday
	santa.get_mad_at("Vixen")
	#santa.gender = "female"

end







