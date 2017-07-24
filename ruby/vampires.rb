puts "How many employee applications will you be processing today?"
number_of_applications = gets.chomp.to_i

number_of_attempts = 0

while
  number_of_attempts < number_of_applications

puts "What is your name?"
  name = gets.chomp.capitalize
  
puts "How old are you?"
  age = gets.chomp.to_i
  
puts "Really, what year were you born?"
  birth_year = gets.chomp.to_i
  
puts "Would you like some garlic bread for lunch today? (yes or no)"
  garlic = gets.chomp
  
puts "Will you be enrolling in our health insurance policy? (yes or no)"
  insurance = gets.chomp

#just to double check quickly if age is accurate (it is known that it is not visible in the program but referenced later on in the qualifiers)
age_year_match = 2017 - birth_year

allergies = " "

while 

  puts "Please list any and all allergies you might have, one by one, then simply type the word 'done' when finished."
  allergies = gets.chomp
  
  break
  
  allergies != "done!" || allergies != "sunshine"
  
  if
    allergies == "sunshine" || allergies == "done"
    puts "Probably a vampire"
  
  elsif
    age < 200 && (garlic == "yes" || insurace == "yes")
    puts "Probably not a vampire"
    
  elsif
    age > 200 && (garlic == "no" || insurance == "no")
    puts "Probably a vampire"
  
  elsif
    age != age_year_match && insurance == "no" || garlic == "no"
    puts "Almost certainly a vampire"
  
  elsif 
    name == "Drake Cula" || name == "Tu Fang"
    puts "Definately a vampire"
  
  else
    puts "results inconclusive"
  end
end

number_of_attempts += 1 
end 

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
  

