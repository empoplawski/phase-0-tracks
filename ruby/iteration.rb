#def hollywood_actors
	#puts "here are some actors"
	#3.times {yield("Will Ferrell", "Adam Sandler")}
#end

# hollywood_actors { |name1, name2| puts "#{name1} and #{name2} are some really funny actors"}

=begin
letters = ["a", "b", "c", "d", "e"]
new_letters = []

puts "Original data:"
p letters
p new_letters

letters.each do |letter|
	new_letters << letter.next
end

puts "After .each call:"
p letters
p new_letters

numbers = {1 => 'one', 2 => 'two', 3 => 'three'}

numbers.each do |digit, word|
	puts "#{digit} is spelled out as #{word}"
end
*/
=end

tennis_players = ["Murray", "Djokovic", "Federer", "Nadal", "Wawrinka"]
new_names = []

hollywood_actors = {"Buddy" => "Will Ferrell", "Alan" => "Zach Galifianakis", "Steve" => 'Johnny Knoxville', "Happy" => 'Adam Sandler', "Seth" => 'Jonah Hill'}

hollywood_actors.each do |movie_character, actor|
	puts "#{movie_character} was played by #{actor}"
end

tennis_players.each do |top_players|
	new_names = tennis_players.sort
end

# prints out tennis player names alphabetically

p tennis_players
p new_names

tennis_players.map! {|tp| puts tp + " is a great tennis player"}

$numbers = [15, 4, 7, 3, 9]
$new_numbers = []

def less_than_five_array
	$numbers.each do |new_numbers|
		$new_numbers = $numbers.delete_if {|x| x < 5}
	end
	p $new_numbers
end
# method to remove any numbers that are less than five in an array
less_than_five_array

$numbers_hash = {16 => 'sixteen', 3 => 'three', 6 => 'six', 22 => 'twenty_two', 1 => 'one'}
$new_numbers_hash = {}

def less_than_five_hash
	$numbers_hash.each do |digit, word|
		$new_numbers_hash = $numbers_hash.delete_if {|digit, word| digit < 5}
	end
	p $new_numbers_hash
end
# method to remove any numbers that are less than five from a hash
less_than_five_hash


#variables used to check if numbers are greater than five
$numbers_two = [15, 4, 7, 3, 9]
$new_numbers_two = []

def greater_than_five_array
	$numbers_two.each do |new_numbers_two|
		$new_numbers_two = $numbers_two.delete_if {|x| x > 5}
	end
	p $new_numbers_two
end

greater_than_five_array


#variables used to check if numbers are greater than five
$numbers_hash_two = {16 => 'sixteen', 3 => 'three', 6 => 'six', 22 => 'twenty_two', 1 => 'one'}
$new_numbers_hash_two = {}

def greater_than_five_hash
	$numbers_hash_two.each do |digit, word|
		$new_numbers_hash_two = $numbers_hash_two.delete_if {|digit, word| digit > 5}
	end
	p $new_numbers_hash_two
end

greater_than_five_hash

#method that removes all odd numbers in an array
$practice_numbers = [3, 5, 2, 1, 6, 9]

def even_numbers_only
		#even_numbers = $practice_numbers.even?
		even_numbers = $practice_numbers.select {|even_numbers| even_numbers.even?}
	p even_numbers
end

even_numbers_only

#method that removes all odd numbers from a hash
$practice_numbers_hash = {3 => 'three', 5 => 'five', 2 => 'two', 1 => 'one', 6 => 'six', 9 => 'nine'}

def even_numbers_only_hash
	even_hash = $practice_numbers_hash.select {|num, spelled| num.even?}
	p even_hash
end

even_numbers_only_hash
	
#Method that evaluates array to false
$practice_numbers_final = [6, 1, 24, 17, 34]

def greater_than_twelve_array
	greater_than_twelve = $practice_numbers_final.drop_while {|i| i < 12 }
	p greater_than_twelve
end

greater_than_twelve_array

$practice_numbers_final_hash = {'monday' => 1, 'tuesday' => 2, 'wednesday' => 3, 'thursday' => 4, 'friday' => 5}

def practice_final_hash
	p $practice_numbers_final_hash.drop_while {|day, temp| day != 'monday'} 
end

practice_final_hash




	


