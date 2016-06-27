#Ask user to type in their first and last name
#swap first and last name
#change all vowels to the next vowel in aeiou
#change all consonants to the next consonants in alphabet

def next_letter(letter)
	vowels = "aeiou".chars
	consonants = "bcdfghjklmnpqrstvwxyz".chars 
	
	case
		when vowels.include?(letter)
			if letter == vowels[-1]
				new_letter = vowels[0]
			else	
				idx = vowels.index(letter) + 1
			 	new_letter = vowels[idx]
			end
		when consonants.include?(letter)
			if letter == consonants[-1]
				new_letter = consonants[0]
			else
				idx = consonants.index(letter) + 1
				new_letter = consonants[idx]
			end	
		else
			new_letter = "*"
	end
	
	return new_letter
end

def create_alias(spy_name)
	

	flip_name = spy_name.downcase.split(' ').reverse
	
	codename = flip_name.map do |name|
		new_name = name.chars
		new_name.map! do |letter|
			next_letter(letter)
		end
	    
	    new_name = new_name.join('').capitalize 
	end	

    return codename.join(' ')
    
end


agent_database = Hash.new("No data")

puts "Please enter your first and last name to create your spy name. Type 'exit' to quit"

user_input = gets.chomp


while user_input != "exit"
	true_name = user_input
	code_name = create_alias(user_input)
	agent_database.store(true_name, code_name)
	puts "If you want to do another enter another name, or type 'exit' to quit"
	user_input = gets.chomp
end	


agent_database.each do |truename, codename|
	puts "#{truename} is also known as '#{codename}'."
end	

