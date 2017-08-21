# Everyone's favorite to-do list maker!

require "sqlite3"

db = SQLite3::Database.new("todo.db")
 
# create table 

create_table = <<-SQL 
	CREATE TABLE IF NOT EXIST todo(
		id INTEGER PRIMARY KEY,
		task VARCHAR(255),
		location VARCHAR(255),
		importance INT,
		complete BOOLEAN
		)
SQL

def create_task(db, task, location, importance, complete)
	db.execute("INSERT INTO todo (task, location, importance, complete) VALUES (?, ?, ?, ?)", [task, location, importance, complete])
end
