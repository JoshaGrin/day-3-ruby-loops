#loops 01 exercise 1 and 2
def exercise_1()
counter = 0
loop do
  counter += 2
  if counter == 4
    next
  end
  puts " #{counter}."
  if counter == 10
    break
  end
end
end

#loops 01 exercise 3
def exercise_3()
counter = 0
loop do
  counter += 1
  puts "do you have all the ingredients [Y/N]"
  answer = gets.chomp.upcase
  if answer == "Y"
    puts "Let's go to the next step"
  break
  elsif answer == "N"
    puts "Let's go shopping"
  else
    Puts "you did something wrong"
    break
  end
end
end

#while exercise 1
def exercise_4()
  counter = 0
  while counter < 6
    counter += 1
    puts "Break egg #{counter}."
  end
end

#while -1 exercise NOT DONE!

#for loop 1
def exercise_4()
  for counter in 1..6
    puts "Break egg #{counter}."
  end
end
# for loop 2
def exercise_5
  puts "Please enter a number:"
  x = gets.chomp.to_i

  for i in x.downto(0)
    puts i
  end
  puts "Done!"
end

#Arrays 1
def exercise_6
fruits = [ "apple", "strawberry", "rasberry" ]
fruits.each {|fruit| puts "I love #{fruit}."}
end

#Arrays 2 Not Done!
def exercise_7
ingredients =[ ]
counter = 1
ingredients.each do |ingredient|
  puts "#{ingredient}"
end

#Arrays 3 Not Done!
def exercise_8

end


exercise_6
