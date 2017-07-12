toys = ['Meccano', 'Gumby', 'Soldier', 'Kaleidoscope', 'Pony', 'Lego' ]

toys.each do |toy|
  if toy == 'Kaleidoscope'
    toys.delete(toy)
  end
end

puts toys
toys = toys.shuffle!

random_toy = toys[0]

puts "The random toy is #{random_toy}"

toys.delete(random_toy)

puts "The list of new toys are #{toys}"
