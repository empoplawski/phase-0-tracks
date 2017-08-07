
###define class

class Guessing_game

	attr_reader :guesses, :display, :word_array, :player_guess, :number_of_letters_right

	def initialize(word)
		@word = word.downcase
		@word_array = @word.split('')
		p "#{@word_array}" ### I have this in here to show that it is infact splitting into the proper amount
		@letters_guessed = []
		@display = word.gsub(/[a-zA-Z" "]/, "-").split
		@word_array = display - [" "]
		p "you have #{@word_array.length} attempt(s) left to guess" #but this is not translating into proper number here, it is a number but not the right one.
		p display.join
		@game_won = false
	end

	def managing_guesses
		while @letters_guessed.count < @word_array.length
			puts "Guess another letter"
			guess = gets.chomp.downcase
			letters_guessed = []

			if word_array.include?(guess)

#display that shows what has been guessed and counts

				display.each_with_index do |guess, index|
					if word_array[index] == guess
						display[index] = guess
						@wletters_guessed << guess
					end
				end

				word_array[letter_index] = ""
				display[letter_index] = guess
				puts "Nice, now here's what you have guessed so far #{display.join}"
				p @letters_guessed

				self.game_over?
# for when the arrays have been matched and the game ends

			elsif @display == @word_array
				then @game_over == true
				self.game_over?
				
# for a repeated guess
			elsif @letters_guessed.include?(guess)
				@letters_guessed.delete_if{|a| a == guess}
				@letters_guessed << guess
				puts "You have already guessed that letter silly goose"
				p @letters_guessed


			else
				puts "Whoops no dice, try again"
					@letters_guessed << guess
					self.game_over?
			end
		end
	end
#method to end game
	def game_over?
		if @game_over == true
			puts 'You did it!!'
		end

		if @letters_guessed == @word_array.length && @display.include?("-")
			true
			puts "aww buckets, better luck next time"

		end
	end
			


end

puts "What is the word you want to be guessed?"
@word = gets.chomp.downcase
system "clear"

game = Guessing_game.new(@word)
game.managing_guesses
				
