# array
food = ["pizza", "tacos", "burgers", "fried chicken"]

# hash
actor_best_movies = {"tom cruise" => "mission impossible", "kevin hart" => "ride along", "chris evans" => "captain america", "charlize theron" => "The huntsman"}

# each array 
food.each do |x| puts "My favorite food to eat is #{x}" 
end

#each hash
actor_best_movies.each do |x,y| puts "The actor #{x} is really good in the movie #{y}"
end

#map array

puts "Before .map"
puts food

food.map! {|f| "Yummy!"}

puts "After .map"

puts food


highscore = [10, 21, 56, 98]
highscore.delete_if { |highs| highs < 50}
p highscore

highscore = [10, 21, 56, 98]
highscore.keep_if {|top| top >= 20}
p highscore

# Selects if the number is greater then 50
highscore.select { |a| a > 50 }
p highscore
# Rejects if the number is less then 40
highscore.reject { |a| a < 40 }
p highscore

