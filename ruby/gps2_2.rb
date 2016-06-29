#square_it function
#input: some number (we'll call it number)
#steps: multiply number by itself (this is the definition of a square)
#output: a different number ( the result of the calculuation)

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # set default quantity
  # list[:carrots] = 3
  # print the list to the console [can you use one of your other methods here?]
  #p list
# output: [what data type goes here, array or hash?]
#hash


def create_list(items)
  $list = {}
  items.split(" ").each do |item|
    $list[item] = 3
  end
  p $list
end

p create_list("apple banana milk")

$list
# Method to add an item to a list

# input: some item(hash)
# steps: add a key to the hash
# list[:item_name] = quantity
# output: item added to the hash

def add(hash, item, qty)
  hash[item] = qty
  
end

add($list,"lemonade", 2)
add($list,"tomatoes", 3)
add($list,"onions", 1)
add($list,"ice cream", 4)

p $list


# Method to remove an item from the list
# input: deleting a key from the hash
# steps:delete the key(item)
# output: item(key) deleted

def remove(hash, item)
  hash.delete(item)
end

remove($list, "lemonade")
 
p $list

# Method to update the quantity of an item
# input: key and a value 
# steps: assign a new value to the key
# output: updated key

def update(hash, item, qty)
  hash[item] = qty
end

update($list, "ice cream", 1)

p $list

# Method to print a list and make it look pretty
# input: hash (list)
# steps: use map or each to change the look of the hash
# output: display of the hash(items and quantities)

def display(hash)
  hash.map do |k,v|
    puts "#{k}: #{v}"
  end
end

display($list)


=begin

Release 5: Reflect

What did you learn about pseudocode from working on this challenge?
I learned the proper way to Pseudocode and that I needed to explain more in my steps.

What are the tradeoffs of using arrays and hashes for this challenge?
Using arrays in this challenge was good for creating the initial list of items we needed first and the
hashes came in handy when adding a value or "qty" to each grocery item. If only arrays were used
we would have to make another array prob and make sure the item name and second array lined up 
in order. 
ex: food = ["ham", "pizza"]
    qty = [2, 4]
ham_needed = qty[0]    


What does a method return?
A method returns the output of the code ran inside of it. Input / output

What kind of things can you pass into methods as arguments?
You can pass any existing arguments like integers and global variables. You can enter as many
more then one parameter to pass in.

How can you pass information between methods?
You can set a global variable or call a method from within a method.

What concepts were solidified in this challenge, and what concepts are still confusing?
The concepts in this challenge were methods,symbols and hashes and how and when to use each.
Doing the individual assignments its easy to understand but when you throw it all together it
now its confusing as to where to start first or mixing up rules. This challenge definitely helped clear
up some things I was uncertain about when doing the individual assignments. I think me and my pairing
partner both learned alot on this one thanks to each other. I will be doing my own research and
practicing more methods and uses of symbols and nested structures. I understand the concepts it just
the actual syntax is what I mix up. I did 3 of the assignments in one day and did the gps the next so
I think if given more time I could have done the assignment quicker.


=end

