# Start by creating the empty hash
client = {}

# Get Client data/info
# Client Details: 
# Name,Age,Number of Children,Decor Theme

# Get clients name
puts "What is your name?"
client[:name] = gets.chomp

# clients age
puts "How old are you?"
client[:age] = gets.chomp.to_i

# CLient # of children
puts "How many children do you have?"
client[:children] = gets.chomp.to_i

# Get clients fav decor theme
puts "What is your preferred decor theme?"
client[:decor_theme] = gets.chomp

#print info for review
puts "Here's a review of your info."
puts client

# ask user if changes need to be made
puts "Is your information correct? If correct enter yes and if not enter the title of the info you need changed."
correct = gets.chomp

# make changes if user needs to 
if correct == "yes"
	puts "Thank you for your information for our files"
else
	update = correct.to_sym
	puts "Please enter info you need changed."
	client[update] = gets.chomp
	puts "Information updated."
end

# show info again
puts "Heres your updated info.Thank you."
puts client

