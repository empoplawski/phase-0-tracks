#####define class and initialize it

class The_guessing_game

	attr_reader :previous_guesses, :word_to_guess
	attr_accessor :guess, :guess_counter, :game_over, :dashes

	def initalize(word_to_guess)
		@word_to_guess = word_to_guess
		@guess = guess
		@number_of_guesses = 0
		@previous_guesses = []
		@dashes = []
		@game_over = false
	end

def word_checker

	if @word_to_guess != @guess
		puts "Nope guess again!"

		wtg_index = dashes
		wtg_split = @word_to_guess.split('')
		guess_split = @guess.split('')

	guess_split.each do |letter|
		if wtg_split.include?(letter)
	end
end

dashes = wtg_index.join('')
	p "Heres what you have so far" + dashes
		@game_over
	else
		@game_over = true

	end
end

def guess_counter
	if @previous_guesses.include?(@guess)
		puts "Whoops, you already guessed that!"
	else
		@number_of_guesses += 1
	end
end

#####Driver Code



	puts "Lets play a game!"
	puts "Please enter the word that you would like the other to player to guess"
		@word_to_guess = gets.chomp.downcase
	

game = The_guessing_game.new

game.dashes = ("-" * game.word_to_guess.length).split('')


	while game.game_over != true
		remaining_guesses = word_to_guess.length - game.number_of_guesses
		
		if game.game_over != true && remaining_guesses != 0
			puts "You have #{remaining_guesses} left, What is your next guess?"
			game.guess = gets.chomp.downcase
			game.word_checker
			game.counting_guesses
			game.display_method

		elsif game.game_over != true && remaining_guesses == 0 
			puts "You are out of guesses, better luck next time!!"
			game.game_over = true
		
		else
			game.game_over == true && guesses != 0
			puts "You did it!, You guessed the word!!"
		end
	end
end