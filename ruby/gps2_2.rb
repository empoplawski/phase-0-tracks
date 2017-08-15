# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")


# steps: 
  # [fill in any steps here]
  # create a hash
  # assign a value pair matching food item and quanity
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?


#list = "carrots apples cereal pizza"
list = ""

def create_list(list)
	items = []
	grocery_list = {}
	
	new_list = list.split
	
	new_list.each do |x| 
		print x
		grocery_list[x] = 0
	end

	return grocery_list
end

# assign grocery list to accessable variable

useable_list = create_list(list)


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: add key value pair to hash
# output: Add value "milk" to list within hash and a value of 3

def add_item(grocery_list, item, quanity = 27)
	grocery_list[item] = quanity
end

add_item(useable_list, "Lemonade", 2)
add_item(useable_list, "Tomatoes", 3)
add_item(useable_list, "Onions", 1)
add_item(useable_list, "Ice Cream", 4)


#p useable_list

# Method to remove an item from the list
# input: list, item name
# steps: remove key value pair from hash
# output: useable list without apples

def remove_item (grocery_list, item)
	grocery_list.delete(item)
end

remove_item(useable_list, "Lemonade")

#p useable_list

# Method to update the quantity of an item
# input: list, item name, quanity
# steps: define which item you want to update the value for within the hash
# output: list with updates item quanity

def update_quanity (grocery_list, item, quanity)
	grocery_list[item] = quanity
end

update_quanity(useable_list, "Ice Cream", 1)

#p useable_list

# Method to print a list and make it look pretty
# input: grocery list, item name, quantity
# steps: call on grocery list and call on its key value pairs to display into useable format
# output:

def print_list(grocery_list)
	puts "This is what we need, and how many"
	grocery_list.each do |item, quanity|
		puts "#{item}: #{quanity}"
	end
end

print_list(useable_list)


