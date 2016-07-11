
#class Solo Project
#at least three attributes (using at least two data types) whose values will vary from instance to instance (example: age)
#at least three methods, at least one of which takes an argument
#Class Guitar
#attributes
    #brand
    #color
    #price
#methods
    #condition(new/used/)
    #play
    #guitar_stats
#Class Guitar


class Guitar
  attr_accessor :brand, :price, :color
  
	def initialize(brand, price, color)
	  @brand = brand
		@price = price
		@color = color
		@serial_number = 1
	end


  
	def serial_number
	  @serial_number += rand(1..500)
	  puts "The serial number is #{@serial_number}"
	end
	
	
	def play(mins)
		if mins < 5
			puts "Played guitar for #{mins} mins your aimless!"
		else
			puts "Played guitar for #{mins}, Keep it goin!!!"
		end
	end

def guitar_stats
	store_guitars = true
	guitar_array = []
	while store_guitars 
		puts "Would you like to enter a guitars info?"
		continue_storing_guitars = gets.chomp
		if continue_storing_guitars == "no"
			break
		else
		  puts "what brand is the guitar?"
		  @brand = gets.chomp
			puts "What color is the guitar?"
			@color = gets.chomp
			puts "How much does the guitar cost?"
			@price = gets.chomp.to_i
			guitar_array << Guitar.new(@brand, @price, @color)
		end
	end

	guitar_array.each do |guitar|
		puts "This is guitar number #{guitar_array.index(guitar) + 1}."
		puts "This guitar costs #{guitar.price} dollars."
		puts "This guitar is #{guitar.color} in color."
		puts "The Serial number is #{serial_number}"
		end
	end
end
guitar1 = Guitar.new(rand(199), rand(200), rand(2..300))
guitar1.guitar_stats
