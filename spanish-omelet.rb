def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

num_potatoes = 5
num_eggs = 6

ingredients = [
  {name: "potatoes", quantity: num_potatoes },
  {name: "eggs", quantity: num_eggs },
  {name: "union", quantity: 1 },
  {name: "oil", quantity: "some"},
  {name: "salt", quantity: "some"}
]

puts "*    Let's cook a Spanish Omelette!    *"
print_divider

puts "you need the ingredients"

ingredients.each do |ingredient|
  puts "* add #{ingredient[:quantity]} #{ingredient[:name]} "
end

loop do
print "\n"
print_divider
counter = 0
  counter += 1
  puts "do you have all the ingredients [Y/N]"
  answer = gets.chomp.upcase
  if answer == "Y"
    puts "Let's go to the next step"
  break
  elsif answer == "N"
    puts "Let's go shopping"
  else
    puts "you did something wrong"
    break
  end
end

steps = [
  { description: "Scrape potatoes", action: "scrape_potatoes" },
  { description: "Cut potatoes into thick slices", action: "cut_potatoes" },
  { description: "Chop the onion", action: "generic_recipe_step" },
  { description: "Heat the oil in a large frying pan", action: "generic_recipe_step" },
  { description: "Add potatoes to the pan", action: "add_potatoes_to_pan" },
  { description: "Add onion to the pan", action: "generic_recipe_step" },
  { description: "Strain potatoes and onions through a colander into a large bowl", action: "generic_recipe_step" },
  { description: "Break the eggs", action: "break_eggs" },
  { description: "Beat the eggs separately", action: "generic_recipe_step" },
  { description: "Stir into the bowl the potatoes with plenty of salt", action: "generic_recipe_step" },
  { description: "Heat a little of the strained oil in a smaller pan", action: "generic_recipe_step" },
  { description: "Tip everything into the pan and cook on a moderate heat", action: "generic_recipe_step"},
  { description: "When almost set, invert on a plate and slide back into the pan", action: "generic_recipe_step" },
  { description: "Cook a few more minutes and slide on to a plate and cool for 10 minutes before serving", action: "generic_recipe_step" }
]

print_divider

steps.each_with_index do |step, index|
  puts (index + 1).to_s + "." + step[:description]
end

def generic_recipe_step
  puts "On it!"
  print_progress_bar
end

def scrape_potatoes
  counter = 0
  while counter < num_potatoes
    counter += 1
    print "Scraping potato #{counter}"
    print_progress_bar
  end
end

def cut_potatoes
  counter = 0
  while counter < num_potatoes
    counter += 1
    print "Cutting potato #{counter} into thick slices"
    print_progress_bar
  end
end

def add_potatoes_to_pan
  for counter in 1..num_potatoes
    print "Adding potato #{counter} to the pan."
    print_progress_bar
  end
end

def break_eggs
  counter = 0
  while counter < num_eggs
    counter += 1
    print "Breaking egg #{counter}"
    print_progress_bar
  end
end

def ask_if_ready(step, index)
  puts "Are you ready for step #{index + 1}? [Y/N]\n(#{step[:description]})"
  answer = gets.chomp
  if
  answer.upcase == "Y"

end  
end

steps.each_with_index do |step, index|
  print_divider
  loop do
    ready = ask_if_ready(step, index)
    break if ready

    puts "OK, I will give you some extra time."
    print_progress_bar
  end

  send = (step[:action])
end
print "\n"
print_divider
puts "Have a nice meal!".upcase
print "\n"
print_divider
