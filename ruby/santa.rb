
#create santa class with methods to give attributes and state

class Santa

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

	def eat_milk_and_cookies
		puts "What kind of cookie did Santa eat?"
		cookie = gets.chomp
		puts "That was a good #{cookie} cookie!"
	end
end

## driver code

santas = []

genders = ["he", "she", "heman", "no-man", "agender", "all genders", "your guess is as good as mine"]
ethnicities = ["white", "black", "hispanic", "african", "asian", "nun-ya", "n/a"]

santas << Santa.new(genders, ethnicities)

genders.each do |gender|
	puts "santa is now a #{gender}"
end
ethnicities.each do |ethnicity|
	puts "they are #{ethnicity}"
end
	

p santas