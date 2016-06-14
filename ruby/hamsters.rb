puts "What is the hamsters name?"
name = gets.chomp

puts "Whats the hamsters squeeky level? From 1-10"
vol = gets.chomp.to_i

puts "What's the color of the hamsters fur?"
color = gets.chomp

puts "Is the hamster adoptable? yes/no"
adopt = gets.chomp

puts "What's the estimated age of the hamster? "
age = gets.chomp.to_i

if age == " "
  age = nil
end

puts "The hamsters name is #{name.capitalize} and its squeeky level is #{vol}. #{name.capitalize}'s fur color is #{color} and our answer about being adoptable is #{adopt}. Lastly the estimated age of #{name.capitalize} is #{age}."
puts "Please review all information to make sure it's correct."


=begin
  
Hamsters.rb by: Angelo Deleon and Paula Lee
  
end




