# Place for user to input all information

client = {}

	puts "Client name?"
		name = gets.chomp
		client [:name] = name

	puts "Client age?"
		age = gets.chomp
		client [:age] = age

	puts "Number of childern that client has?"
		children = gets.chomp
		client [:children] = children

	puts "Clients preffered decor theme?"
		decor_theme = gets.chomp
		client [:decor_theme] = decor_theme

	puts "Does the client have pets? (yes/no)"
		pets = gets.chomp
		client [:pets] = pets

# asks for mistakes or any other errors that needs to be fixed

puts "Are there any mistakes you would like to fix (yes or no)?"
	response = gets.chomp

	if response == "yes"
		puts "please enter the value you would like to fix? (name, age, children, decor_theme, pets)
			mistake = gets.chomp.to_sym
		puts "please enter the new value"
			new_value = gets.chomp
		client[mistake] = new_value
	else response == "no"
end

 # print the client information, with updates (if any)
p client

