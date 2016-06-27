def build_array(a, b, c)
	return new_array = [a, b, c]
end



def add_to_array(array, item)
	array << item
end

# create array
movies = []
p movies

movies << "faceoff" 
movies << "toy story" 
movies << "billy madison" 
movies << "jurassic park" 
movies << "spiderman"
p movies

movies.delete_at(2)
p movies

movies.insert(2, "ironman")
p movies

movies.shift
p movies

movies.include?("ironman")

if movies.include?("ironman")
	puts "Ironman is in the array"
else
	puts "Ironman is not in the array"
end

tvshows = ["silicon valley", "game of thrones", "mr.robot"]
p tvshows

entertainment = movies + tvshows
p entertainment

p build_array('red', 'blue', 'black')
p add_to_array([1,2,3], 4)
	