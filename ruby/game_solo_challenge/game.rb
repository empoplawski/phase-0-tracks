


class Guessing_game

	attr_reader :length_of_word, :guesses, :display, :word_array, :player_guess, :number_of_letters_right

	def initialize(word)
		@word = word.downcase
		@word_array = word.split('')
		@length_of_word = length_of_word
		@letters_guessed = []
		@display = word.gsub(/[a-zA-Z" "]/, "-").split
		@word_array = display - [" "]
		p "you have #{word_array.length} attempts left to guess"
		p display.join
	end

	def managing_guesses
		while @letters_guessed.count < @word_array.length
			puts "Guess another letter"
			guess = gets.chomp.downcase
			letters_guessed = []

			if word_array.include?(guess)

				display.each_with_index do |guess, index|
					if word_array[index] == guess
						display[index] = 
						@wletters_guessed << guess
					end
				end

				word_array[letter_index] = ""
				display[letter_index] = guess
				puts "Nice, now here's what you have guessed so far #{display.join}"
				p @letters_guessed
				self.is_over?

			elsif @letters_guessed.include?(guess)
				@letters_guessed.delete_if{|a| a == guess}
				@letters_guessed << guess
				puts "You have already guessed that letter silly goose"
				p @letters_guessed
				
