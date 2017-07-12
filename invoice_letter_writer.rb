require 'erb'

kids_data   = File.read('data/kids-data.txt')
invoice_letter = File.read('templates/invoice_letter.txt.erb')

kids_data.each_line do |kid|

  kid_data_array = kid.split

  name         = kid_data_array[0]
  gender       = kid_data_array[1]
  behavior     = kid_data_array[2]
  toys         = kid_data_array[3..8]
  house_number = kid_data_array[9]
  street_name  = kid_data_array[10]
  street_type  = kid_data_array[11]
  postal_code  = kid_data_array[12]
  house_value  = kid_data_array[13].to_i
  hst          = 1.15
toy_hash = {}
total = 0
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
     total = sub_total * hst
     total.round(2)
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
      total = sub_total * hst
      total.round(2)
    end
    end



  # next unless behavior == 'naughty'




  filename    = 'letters/invoices/' + name + '.txt'
  letter_text = ERB.new(invoice_letter, nil, '-').result(binding)

  puts "Writing #{filename}."
  File.write(filename, letter_text)

end

puts 'Done!'
