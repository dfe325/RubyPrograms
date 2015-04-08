#original submission for 99 bottles of beer coding challenge

bottles = 99

while bottles > 1

#if statement uses mod to decide whether bottles is a multiple of ten
  if (bottles % 10 == 0)
    punctuation = '!'
  else
    punctuation = '.'
  end

puts bottles.to_s + ' bottles of beer on the wall, ' + bottles.to_s + ' bottles of beer' + punctuation

#decrement bottles by one
bottles -= 1

#special case when bottles == 1, breaks out of while loop
if bottles == 1
  puts 'Take one down and pass it around, ' + bottles.to_s + ' bottle of beer on the wall.'
  break
end

puts 'Take one down and pass it around, ' + bottles.to_s + ' bottles of beer on the wall.'

puts
end

#additional while loop for special cases bottles == 1 and 0
while bottles == 1
	puts
	puts bottles.to_s + ' bottle of beer on the wall, ' + bottles.to_s + ' bottle of beer' + punctuation
	puts 'Take one down and pass it around, no more bottles of beer on the wall.'
	bottles -= 1
	puts
if bottles == 0
	puts 'No more bottles of beer on the wall, no more bottles of beer.'
	puts 'Go to the store and buy some more, 99 bottles of beer on the wall!'
end
end
