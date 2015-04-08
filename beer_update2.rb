100.downto(1) do |number|
  puts

  puts (number >= 2) ? "#{number} bottles of beer on the wall." : "#{number} bottle of beer on the wall."

  if number % 10 == 0 && number >= 2
    puts "#{number} bottles of beer!"
  elsif number >= 2
    puts "#{number} bottles of beer."
  else
    puts "#{number} bottle of beer."
  end

  puts "Take one down, pass it around."

  if (number - 1) >= 2
    puts "#{(number-1)} bottles of beer on the wall..."
  elsif (number - 1 ) == 1
    puts "#{(number-1)} bottle of beer on the wall..."
  else
    puts "No more bottles of beer on the wall."
  end
end

puts
puts "No more bottles of beer on the wall."
puts "No more bottles of beer."
puts "Go to the store, buy some more."
puts "99 bottles of beer on the wall!"
