class Puppy
	
	def initialize
		print "Initializing new puppy instance ..."
	end
	
	def fetch(toy)
    	puts "I brought back the #{toy}!"
    	toy
    end
  
	def speak(num)
  	num.times { |num| print "Woof! "}
    end

	def roll_over
		print "*rolls over*"
	end
	
	def dog_years(x)
		x * 7
	end
	
	def flips
		print " *does a flip*"
	end
end

class Contestant
	def initialize
		puts "Initializing Contestant..."
	end
	
	def jump
		puts "*Jumped*"
	end
	
	def record
		puts "Counting this fight has 100 wins!!!"
	end
end

#loop 50 instances
contestants = []
idx = 0
while idx < 50
#store instances in data structure "Array"
	contestants << Contestant.new
	idx += 1
end


contestants.each do |cont| 
		cont.jump
		cont.record
	end


Jim = Contestant.new



#driver code
=begin
papas = Puppy.new
papas.fetch("ball")
papas.dog_years(8)
papas.flips
=end

