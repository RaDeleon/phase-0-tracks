#Vapire-Detection

puts "How many employees are you processing?"
proc = gets.chomp.to_i
until proc <= 0


puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
dob = gets.chomp.to_i

if age == (2016 - dob)
	actual_age = "true"
else 
	actual_age = "false"
end

puts "We're serviving garlic bread for lunch, should we order you some? (yes/no)"
garlic = gets.chomp

puts "Would you like to enroll in the company health insurance plan? (y/n)"
plan = gets.chomp

puts "Please list all allergies you have. Type done when finished"
allergies = gets.chomp

if actual_age == age && garlic == "Yes" || plan == "Yes"
  puts result = "Probably not a vampire."
elsif actual_age != age && garlic == "no" && plan == "no"
  puts result = "Probobly a Vampire" 
elsif actual_age != age && garlic == "no" || plan == "no" || allergies == 'sunshine'
  puts result = "Almost certainly a vampire."
elsif name == "Drake Cula" || name == "Tu Fang"
  puts result = "Definitely a vampire!"
else    
  puts result = "Results inconclusive."
  end
  proc = proc - 1
end

puts "Here is the conclusion from the employee survey: #{result}"

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
	