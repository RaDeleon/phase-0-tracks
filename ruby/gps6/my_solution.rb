# Virus Predictor

# I worked on this challenge [with: Ann D'Esposito].
# We spent [3.5] hours on this challenge.

# EXPLANATION OF require_relative
# lets the file know that it needs an additional file to run and what the file is named.
#
require_relative 'state_data'


class VirusPredictor
  # takes in arguments on initialization and declares them as instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # calling methods and taking in arguments required by those methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end



  private

  def densitys
  @more_dense = @population_density >= 200
  @dense = @population_density >= 150
  @medium_dense = @population_density >= 100
  @low_dense = @population_density >= 50
  end


  def deaths(multiplier)
    (@population * multiplier).floor
  end

  def predicted_deaths
    predicted deaths is solely based on population densitys
    if @population_density >= 200
     number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
     number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
     number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
     number_of_deaths = (@population * 0.1).floor
    else
    number_of_deaths = (@population * 0.05).floor
    counter = 200
    multiple = 0.4

    #while counter > 50
    #  if @population_density >= counter
    #    number_of_deaths = (@population * multiple).floor
    #    counter -= 50
    #    multiple -= 0.1
    #  else
    #    number_of_deaths = (@population * 0.05).floor
    #  end
    #end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0


if @more_dense
  speed += 0.5
elsif @dense
  speed += 1
elsif @medium_dense
  speed += 1.5
elsif @low_dense
  speed += 2
else
  speed += 2.5
end



=begin
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
=end

    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state
STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state, data[:population_density], data[:population])
  state.virus_effects
end


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effect Section
end

=begin

Reflection Section:

What are the differences between the two different hash syntaxes shown in the state_data file?
They are nested hashes and inside was hash and inside the hash was 2 hashes using symbols for the key.

What does require_relative do? How is it different from require?
Require relative tells the program that it will need an additional file to run. Require_relative lets you list a
file relative the the current file (in the same directory), but require you have to list the entire file path.

What are some ways to iterate through a hash?
Using a conditional function. "each do"" .


When refactoring virus_effects, what stood out to you about the variables, if anything?
That they were requiring arguements for the method, when that was not needed since it was using instance variables.


What concept did you most solidify in this challenge?
I most solidified my use of .floor, .fdiv, and how constant variables work.
=end