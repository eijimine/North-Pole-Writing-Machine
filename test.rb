toys = ['Meccano', 'Gumby', 'Soldier', 'Kaleidoscope', 'Pony', 'Lego' ]
house_value = 250000

toy_hash = {}

if house_value >= 1000000
  toy_value = 0
  sub_total = 0
  toys.each do |toy|
    if toy == 'Kaleidoscope'
      toy_value = 0
    else
      toy_value = 1000
    end
    sub_total += toy_value
    toy_hash[toy] = toy_value
  end
elsif house_value < 1000000 && house_value > 200000
  toy_value = 0
  sub_total = 0
  toys.each do |toy|
    if toy == 'Kaleidoscope'
      toy_value = 0
    else
      toy_value = 100
    end
    sub_total += toy_value
    toy_hash[toy] = toy_value
  end



end

toy_hash.each do |toy, value|
  puts "#{value} #{toy}"
end
