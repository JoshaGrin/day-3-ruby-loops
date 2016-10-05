#Music store
puts "Tell us what is your name?"
@name = gets.chomp
puts "Welcome!" + " " + @name
@products = [
  {genre: 'pop', band: 'Micheal Jackson', songs: 12, price: 15 },
  {genre: 'metal', band: 'Slayer', songs: 15, price: 10 },
  {genre: 'techno', band: 'gesaffelstein', songs: 8, price: 12 }
]

@products.each_with_index do |product|
puts "wich artis/band or genre do you like to see?" + " " + product[:genre] + "/" + product[:band] + "."
end
