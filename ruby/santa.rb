class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age
  def initialize(gender, ethnicity)

    print "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    print "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete reindeer
    puts "You know what you did #{reindeer}.."
    @reindeer_ranking.push reindeer
    puts "To the back Mr.#{reindeer}"
  end

=begin
  #Setter method 
  def gender=(new_gender)
    @gender = new_gender
  end
  
  #Getter Methods
  def age
    @age
  end
  
  def ethnicity
    @ethnicity
  end
  
=end  

end

  #DriverCode
  #jim = Santa.new("male", "Latino")
  #puts jim.celebrate_birthday
  #p jim.get_mad_at "Dasher"
  #p jim.gender=("black")
  #p jim.gender
  genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
  ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A""black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
  santa_num = 0
  while santa_num < 1000
    santa = Santa.new(genders.sample, ethnicities.sample)
    santa.age = rand(1..140)
    puts "Santa # #{santa_num}"
    puts "Gender: #{santa.gender}"
    puts "Ethnicity: #{santa.ethnicity}"
    puts "Age: #{santa.age}"
    santa_num += 1
  end
end
