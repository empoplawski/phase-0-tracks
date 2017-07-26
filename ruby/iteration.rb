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
	


