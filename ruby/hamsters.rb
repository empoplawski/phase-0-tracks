
puts "What is the name of this hamster?"
  hamster_name = gets.chomp!
puts "How squeeky are you on a scale of 1 to 10?"
  squeek_level = gets.to_i
puts "What's your fur color?"
  fur_color = gets.chomp!
puts "Do you want to be adopted? (yes/no)"
  adopt_interest = gets.chomp!
puts "How old are you even?"
  age = gets.chomp!
  if age.empty? 
  age = nil
  else
  age = age.to_i
end

print "The hamster's name is #{hamster_name}. This little monster's squeek level is #{squeek_level}, with a coat of pure #{fur_color}. What an amazing beast! #{adopt_interest}, #{hamster_name} has interest in adoption and is #{age} years old. What an exciting opportunity!"