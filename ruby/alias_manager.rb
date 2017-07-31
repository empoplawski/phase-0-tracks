

#reverse first and last name and re-capitalize


def name_reverse(name)
	name.split.reverse.join(' ').capitalize
end


#change vowels with special condition for "u"

def next_vowel(name)
	vowels = %w( a e i o u )
	name = name.downcase!.split('')
	new_name = name.map do |vowels_method|
		if vowels.include?(vowels_method)
			vowels.rotate(1)[vowels.index(vowels_method)]
		elsif vowels == 'u'
			vowels.replace('a')	
		else
			vowels_method
		end
	end
	new_name.join.capitalize
end

# change consonants with special condition for "z"		

def next_consonant(name)
	consonants = %w( b c d f g h j k l m n p q r s t v x y z)
		name = name.downcase.split('')
		new_name = name.map do |con|
		if consonants.include?(con)
			consonants.rotate(1)[consonants.index(con)]
		elsif consonants == 'z'
			consonants.replace('b')
		else
			con
		end
	end
	new_name.join.capitalize
end

#method that changes reversered name to to alias name

valid_input = false
agents ={}
user_input = ""
agent_name = ""

until valid_input
	puts "What is the name you would like to change"
		user_input = gets.chomp.downcase
		if user_input == 'quit'
			puts "Good Luck!"
			break
		else
			agent_name = name_reverse (next_vowel(next_consonant(user_input)))
			puts "Your new secret name is #{agent_name}"
		end
		agents[user_input] = agent_name
	end

#store and print results

agents.each do |name, agent_name|
	puts "#{name} is also known as #{agent_name}"
end












