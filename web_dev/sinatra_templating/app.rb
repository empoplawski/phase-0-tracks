# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  @campuses = db.execute("SELECT * FROM campuses")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/students/update' do 
	@student = db.execute("SELECT * FRom students")[0]
	erb :update_student	
end

get '/campuses/new' do
	erb :campuses
end

post '/campuses' do
	db.execute("INSERT INTO campuses (name) VALUES (?)", [params['campus']])
	redirect '/'
end

# add static resources