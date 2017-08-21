# Everyone's favorite to-do list maker!

require "sqlite3"


db = SQLite3::Database.new("todo.db")

 
# create table 

create_table_cmd = <<-SQL 
	CREATE TABLE IF NOT EXIST todo(
		id INTEGER PRIMARY KEY,
		task VARCHAR(255),
		location VARCHAR(255),
		importance INT,
		complete BOOLEAN
		)
SQL

db.execute(create_table_cmd)

#methods for app

def create_task(db, task, location, importance, complete)

	puts "Okay lets add something to your list!"
	puts "What is the name of your task?"
		task = gets.chomp
	puts "Where do you need to complete this task?"
		location = gets.chomp
	puts "On a scale of 1 - 5 (5 being the most important) how important is this task?"
		importance = gets.chomp
	puts "Is this task yet complete? (true / false)?"
		complete = gets.chomp

	db.execute("INSERT INTO todo (task, location, importance, complete) VALUES (?, ?, ?, ?)", [task, location, importance, complete])

	puts "you have added #{task} to your list!"
end

def mark_as_complete(db, completed_task, complete)
	puts "What task did you complete"
		completed_task = gets.chomp

	db.execute("UPDATE todo SET complete='true' WHERE task='#{completed_task}' ")

	puts "Way to get it done!!"
end

def remove_task(db, task_to_delete, location_to_delete)

	puts "What is the name of the task you want to remove?"
		task_to_delete = gets.chomp
	puts "Where was this task located at?"
		location_to_delete = gets.chomp

	db.execute("DELETE FROM todo WHERE name='#{task_to_delete}' AND location='#{location_to_delete}'")

	puts "you have deleted #{task_to_delete}"
end

def display_list(db)
	todo = db.execute("SELECT * FROM todo")
	todo.each do |todo|
		puts " You have to #{todo['task']}, at #{todo['location']}, it has a priority level of #{todo[importance]}, and is it complete? #{todo[complete]}"
	end
end

### Driver Code

puts "Welcome to the task manager!!!"

run_program = true

while run_program == true

		puts "What would you like to do (please enter the number of the option you would like)"
		puts " 1 - View your to list"
		puts " 2 - Add a new item to your list"
		puts " 3 - Mark an item as complete"
		puts " 3 - Remove an item from your list"
		puts " 4 - Exit the program"
			number = gets.chomp

		case number

		when "1"
			puts "Here is your list"
			display_list(db)

		when "2"


			create_task(db, task, location, importance, complete)

		when "3"
			mark_as_complete(db, completed_task, complete)

		when "4"

			remove_task(db, task_to_delete, location_to_delete)

		when "5"
			puts "good bye!"
			break

		else 
			puts "I'm sorry I didn't understand that please try again"
		
		end

		if run_program == true
			puts "What else would you like to do?"
			number = gets.chomp
		end
end



