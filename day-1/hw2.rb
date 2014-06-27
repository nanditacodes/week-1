

# List 1 : Ingredients and how much we need them.

list_of_ingredients = {}
list_of_ingredients[:mangopulp] = "1 can"
list_of_ingredients[:evaporatedmilk] = "1 can"
list_of_ingredients[:condensedmilk] = "1 can"
list_of_ingredients[:pistachios] = "2 tbsp"

#List 2: Steps with their ids.

list_of_steps = {}
list_of_steps[:Step1] = "Open the cans and pour the contents into a bowl."
list_of_steps[:Step2] = "Blend the contents throughly making sure that no lumps are formed."
list_of_steps[:Step3] = "Garnish with the pistachios."

def print_ingredients(hash)
  puts ""
  puts "List of ingredients"
  puts "==================="

  counter = 1

  hash.each do |key, value|
    puts "#{counter}.  #{key}  -  #{value}."
    counter = counter + 1
  end

end


def print_steps(hash)
  puts ""
  puts "List of steps"
  puts "============="

  hash.each do |key, value|
    puts "#{key}: #{value}"
  end

end

print_ingredients(list_of_ingredients)
print_steps(list_of_steps)
puts ""
